import os
import re
import json
import argparse
import numpy as np
from tqdm import tqdm

import multiprocessing
from multiprocessing import Pool

from openai import OpenAI
from typing import List, Tuple, Union
import matplotlib.pyplot as plt
from llmsearch.parse_prolog import PrologTraceParser, sanitize_trace, replace_results, format_trace
from llmsearch.models.models import OpenAIGPT, CommandR, LLM_API, get_kwargs_from_config
from llmsearch.run_prolog import run_prolog, get_prolog_traces
from llmsearch.prompting_utils import add_prompt_to_texts, create_temp_file, extract_code_from_text, extract_last_answer
from llmsearch.pick_icls import pick_icls
from llmsearch.data_utils import load_data
from llmsearch.trace_analysis import get_all_traces


def cpu_count():
    return multiprocessing.cpu_count()

def iterate_over_code(model, sample_index, question_and_plan, dataset, try_count=15):
    code_runs = False
    halt = False
    exit_counter = 0
    history = []
    while not code_runs and not halt:
        print(f"Attemping to run code for sample {sample_index} for the {exit_counter} time")
        response = model(question_and_plan)
        response_content = response.choices[0].message
        
        history.append(response_content.content)
        code = response_content.content
        code = extract_code_from_text(code)

        file_name, file_path = create_temp_file(code, dataset)
        # print(f"{code}")
        results, results_parsed = run_prolog(file_path)

        if results is not None:
            code_runs = True

        exit_counter += 1
        if exit_counter > try_count:
            # code = "Code execution failed" if not code_runs else code
            halt = True
    
    return history, response_content, results, results_parsed, code, code_runs
    

def original_to_process_output_path(original_path, process_id):
    if 'json' not in original_path:
        file_name = f"process_{process_id}.json"
        proccess_output_path = os.path.join(original_path, file_name)
    else:
        base_dir = os.path.dirname(original_path)
        file_name = os.path.basename(original_path)
        file_name, ext = os.path.splitext(file_name)
        proccess_output_path = os.path.join(base_dir, f"{file_name}_process_{process_id}{ext}")
        print(f"Original path: {original_path}")
        print(f"Process output path: {proccess_output_path}")

    return proccess_output_path

def parallel_writes(func, args):

    if len(args) == 4:
        samples, prompts, output_dir, model = args
    elif len(args) > 4:
        model, samples, question_key, data_name, icl_path, num_samples, output_dir, prompts, exec_mode, prompt_dir = args

    num_workers = min(cpu_count(), len(samples))
    print(f"Number of workers: {num_workers}")
    print(f"Number of samples: {len(samples)}")
    chunk_size = len(samples) // num_workers
    chunks = [samples[i:i + chunk_size] for i in range(0, len(samples), chunk_size)]


    # This is a hack to make the object serializable/pickleable
    model.set_mode_parallel()

    if len(args) == 4:
        args = [(chunks[i], prompts, original_to_process_output_path(output_dir, i), model) for i in range(len(chunks))]
    elif len(args) > 4:
        args = [(model, chunks[i], question_key, data_name, icl_path, num_samples, original_to_process_output_path(output_dir, i), prompts, exec_mode, prompt_dir) for i in range(len(chunks))]
    # print(args)


    with Pool(num_workers) as pool:
        #process_chunk 
        result_files = pool.map(func, args)

    # Merge results from temporary files
    final_samples = []
    for index, file_name in enumerate(result_files):
        with open(file_name, 'r') as file:
            data = json.load(file)
            final_samples.extend(data)
        os.remove(file_name)

    # Write the merged results to the final output file
    # final_output_file = os.path.join(output_dir, 'final_output.json')

    inference_flag = False
    for i, sample in enumerate(final_samples):
        if sample['index'] < 0:
            sample['index'] = -1
            inference_flag = True
            continue
        sample['index'] = i

    #remove repeated index in the final samples
    new_samples = []
    indices = []
    for i, sample in enumerate(final_samples):
        if sample['index'] not in indices:
            new_samples.append(sample)
            indices.append(sample['index'])

    if inference_flag:
        output_dir = result_files[0]
        process_regex = re.compile(r"process=\d+_")
        output_dir = process_regex.sub("", output_dir)
        print(f"Final output dir: {output_dir}")

    with open(output_dir, 'w') as file:
        json.dump(new_samples, file, indent=4)


def add_plans_to_questions(args):
    samples, prompts, output_dir, model = args
    model.reinstantiate()

    if len(prompts) != 2:
        additive_prompt, icls = prompts[0], None
    else:
        additive_prompt, icls = prompts[0], prompts[1]

    questions = [f"Question: {sample['question']}" for sample in samples]

    if icls is not None:
        questions = add_prompt_to_texts(questions, icls, strategy="prepend")
    if additive_prompt is not None:
        questions = add_prompt_to_texts(questions, additive_prompt, strategy="append")

    messages = [[{"role": "user", "content": question}] for question in questions]

    new_samples = []
    for i, message in tqdm(enumerate(messages), total=len(messages)):

        response = model(message)
        while response.choices[0].message.content.strip() == "":
            response = model(message)
            print(f"Empty response for sample {i} retrying")
        response_content = response.choices[0].message

        if icls is not None: 
            message[-1] = {"role": "user", "content": questions[i].replace(icls, "").strip()}


        messages[i].append({"role": response_content.role, "content": response_content.content})
        new_samples.append({
            "index": i,
            "question_and_plan": messages[i],
            "plan": response_content.content,
            "answer": samples[i]["answer"]
        })


    with open(output_dir, 'w') as file:
        json.dump(new_samples, file, indent=4)

    return output_dir


def add_code_to_questions(args):
    samples, prompts, output_dir, model = args
    model.reinstantiate()
    additive_prompt = prompts[1]
    questions_and_plans, plans = [item["question_and_plan"] for item in samples], [item["plan"] for item in samples]

    #questions_and_plans is a list of lists of dictionaries
    messages = []
    for question_and_plan_stack in tqdm(questions_and_plans, total=len(questions_and_plans)):
        new_message = []
        for message in question_and_plan_stack:
            new_message.append(message)
        new_message.append({"role": "user", "content": additive_prompt})
        messages.append(new_message)



    new_samples = []
    for i, question_and_plan in tqdm(enumerate(messages)):
        data_name = output_dir.split("/")[-2]
        history, response_content, results, results_parsed, code, code_runs = iterate_over_code(model, i, question_and_plan, data_name, try_count=5)
            
        messages[i].append({"role": response_content.role, "content": response_content.content})

        new_samples.append({
            "index": i,
            "question_and_plan_and_code": messages[i],
            "plan": plans[i],
            "code": code,
            "answer": samples[i]["answer"],
            "prolog_results": results, 
            "prolog_results_parsed": results_parsed,
        })


    with open(output_dir, 'w') as file:
        json.dump(new_samples, file, indent=4)

    return output_dir


def add_traces_to_questions(args):
    samples, data_path, prompts, output_dir = args

    additive_prompt = prompts[2]
    questions_plans_codes = [item["question_and_plan_and_code"] for item in samples]
    plans = [item["plan"] for item in samples]
    codes = [item["code"] for item in samples]

    traces,prolog_file_paths = get_prolog_traces(data_path, samples)
    raw_traces, parsed_traces = {}, {}
    lengths, prolog_results = [], {}



    for index, trace_text in traces.items():
        prolog_file = [path for path in prolog_file_paths if f"prolog_code-{index}" in path][0]
        trace_lines = sanitize_trace(trace_text)

        # traclines is empty
        if len(trace_lines) == 0:
            parsed_traces[index] = ""
            prolog_results[index] = ""
            raw_traces[index] = ""
            continue

        # trace_lines = trace_text.strip().split('\n')
        results, results_parsed = run_prolog(prolog_file)
        print(prolog_file)
        trace_lines = replace_results(trace_lines, results, data_path)

        prolog_parser = PrologTraceParser()
        tree_root = prolog_parser.build_tree_new(trace_lines)
        # prolog_parser.print_tree(tree_root)

        try:
            prolog_parser.save_chains(node=tree_root, chain=[])
            prolog_parser.parse_chains(verbose=False)

            raw_traces[index] = "\n".join(trace_lines)
            parsed_traces[index] = prolog_parser.parsed_chains
            parsed_traces[index] = "\n".join(parsed_traces[index])
        except RuntimeError as e:
            print(f"Error in parsing trace {index}")
            print(e)
            parsed_traces[index] = ""
            raw_traces[index] = ""
            prolog_results[index] = ""
            continue
        # print(parsed_traces[index])
        # print("_"*50)

        parsed_traces[index] = format_trace(parsed_traces[index].split("\n")) \
            if (len(parsed_traces[index].split()) <10000 and len(parsed_traces[index].split()) > 10) else ""
        
        # print(parsed_traces[index])
        prolog_results[index] = results_parsed


        lengths.append(len(parsed_traces[index].split()))
        # if len(prolog_parser.parsed_chains) > 10:
        #     print(f"Index: {index}")
        #     print(f"Trace: {parsed_traces[index]}")
        #     print("_"*50)
        #     return
        

    #how many words are in the trace
    print(f"Average trace length: {np.mean(lengths)}, Max trace length: {np.max(lengths)}, Min trace length: {np.min(lengths)}, Std trace length: {np.std(lengths)}")

    #plot the distribution of trace lengths
    plt.hist(lengths, bins=40)
    plt.xlabel('Length of trace')
    plt.ylabel('Number of traces')
    plt.title('Length distribution of traces')
    plt.show()

    new_samples = []
    for i, question_plan_code in tqdm(enumerate(questions_plans_codes)):
        question_plan_code.append({"role": "user", "content": f"{additive_prompt} \n"})
        question_plan_code.append({"role": "assistant", "content": f"{parsed_traces[i]}"})
        new_samples.append({
            "index": i,
            "question_plan_code_trace": question_plan_code,
            "plan": plans[i],
            "code": codes[i],
            "raw_trace": raw_traces[i],
            "parsed_trace": parsed_traces[i],
            "prolog_results": prolog_results[i],
            "answer": samples[i]["answer"]
        })

    with open(output_dir, 'w') as file:
        json.dump(new_samples, file, indent=4)
    
    return output_dir


def compose_message(messages:List[dict], mode:str ='trace', num_samples:int = 10):
    #modes are: raw, plan, code, trace
    last_message = messages[-1]
    #remove the last message
    messages = messages[:-1]

    # print("Compose message")
    # print(f"Number of messages: {len(message)} with icls: {num_samples}")
          
    messege_count = len(messages)
    per_example = messege_count // num_samples
    # print(f"Number of messages: {messege_count}, per example: {per_example}")

    #if not integer error
    assert messege_count % num_samples == 0, "Number of messages must be a multiple of num_samples"

    #TODO potentially segment an instruction message
    # print(f"Number of messages: {messege_count}, per example: {per_example}")

    if mode == 'raw':
        #take only messages every num_samples
        messages = [messages[i] for i in range(0, len(messages), per_example)]
    elif mode == 'plan':
        #take first 2 per example and last 2 messages
        prompt = messages[7]['content'].replace(", the code and the explored search paths", "")
        plan_answer = [{"role": "user", "content": prompt}]
        messages = [messages[i:i+2] + plan_answer + [messages[i+8]]\
                     for i in range(0, len(messages), per_example)]
    elif mode == 'code':
        #take first 4 per example
        prompt = messages[7]['content'].replace("and the explored search paths", "")
        code_answer = [{"role": "user", "content": prompt}]
        messages = [messages[i:i+4] + code_answer + [messages[i+8]]\
                    for i in range(0, len(messages), per_example)]
    elif mode == 'trace':
        messages = messages
    
    #flatten the list
    if mode != 'trace':
        messages = [item for sublist in messages for item in sublist]

    messages.append(last_message)
    return messages


def generate_once(model:Union[OpenAIGPT, CommandR, LLM_API], messege:List[dict]) -> str:
    try:
        if type(model) is OpenAIGPT:
            response = model(messege)
            response_content = response.choices[0].message.content
        elif type(model) is CommandR:
            response = model(messege)
            if response is None:
                response_content = ""
            else:
                response_content = response.text
        elif type(model) is LLM_API:
            response = model(messege)
            response_content = response.choices[0].message.content

    except Exception as e:
        print(f"Error: {e}")
        print(f"Input messages: {messege}")
        response_content = ""

    return response_content

def generate_plan(model, num_samples, additive_prompt_plans, messages):
    icl_plan_only = compose_message(messages, mode='plan', num_samples=num_samples)
    icl_plan_only.append({"role": "user", "content": additive_prompt_plans})

    predicted_plan = generate_once(model, icl_plan_only)
    return icl_plan_only, predicted_plan

def generate_code(model, num_samples, additive_prompt_plans, additive_prompt_code, messages, predicted_plan):
    icl_plan_code = compose_message(messages, mode='code', num_samples=num_samples)

    icl_plan_code.append({"role": "user", "content": additive_prompt_plans})
    icl_plan_code.append({"role": "assistant", "content": f"\n{predicted_plan}"})
    icl_plan_code.append({"role": "user", "content": additive_prompt_code})

    predicted_code = generate_once(model, icl_plan_code)
    return icl_plan_code,predicted_code

def generate_traces(model, num_samples, additive_prompt_plans, additive_prompt_code, additive_prompt_traces, messages, predicted_plan, predicted_code):
    icl_plan_code_trace = compose_message(messages, mode='trace', num_samples=num_samples)
    icl_plan_code_trace.append({"role": "user", "content": additive_prompt_plans})
    icl_plan_code_trace.append({"role": "assistant", "content": f"\n{predicted_plan}"})
    icl_plan_code_trace.append({"role": "user", "content": additive_prompt_code})
    icl_plan_code_trace.append({"role": "assistant", "content": f"\n{predicted_code}"})
    icl_plan_code_trace.append({"role": "user", "content": f"{additive_prompt_traces}"})

    predicted_traces = ""
    tries = 0
    while predicted_traces == "" and tries < 5:
        predicted_traces = generate_once(model, icl_plan_code_trace)
        if predicted_traces.strip() == "":
            print("Retrying to generate the traces")
        tries += 1
    return icl_plan_code_trace,predicted_traces


def generate_final_answer(model, question_key, additive_prompt_results, sample, icl_with_state, predicted_outcome):
    if "Here is the answer" not in predicted_outcome:
                # print("Generating the answer")
        icl_with_state.append({"role": "assistant", "content": f"\n {predicted_outcome} \n"})
        icl_with_state.append({"role": "user", "content": f"question: {sample[question_key]} \n"})
        icl_with_state.append({"role": "user", "content": f"{additive_prompt_results} \n"})
        predicted_answer = generate_once(model, icl_with_state)
    else:
        predicted_answer = predicted_outcome
    return predicted_answer


def inference(args):
        
    # model:str, samples:List[dict], question_key:str, data_name:str, icl_path:str, num_samples:int, output_dir:str, prompts:List[str], execute_mode:str, prompt_dir:str = args
    model, samples, question_key, data_name, icl_path, num_samples, output_dir, prompts, execute_mode, prompt_dir = args
    model.reinstantiate()

    additive_prompt_plans, additive_prompt_code, additive_prompt_traces, additive_prompt_results = prompts[0], prompts[1], prompts[2], prompts[3]
    picked_icls = pick_icls(icl_path, num_samples)

    in_context_messages = []
    for index, icl in enumerate(picked_icls):
        message_key = [key for key in icl.keys() if "question" in key.lower()][0]

        # print(f"Index: {index}")
        # print(f"Message: {icl.keys()}")
        # print(f"Message: {icl[message_key]}")
        question = icl[message_key][0]['content'].split("\n")[0]
        icl[message_key][0]['content'] = f"######\n[Example {index+1}] \n{icl[message_key][0]['content']}"
        # icl[message_key].append({"role": "user", "content": additive_prompt_traces})

        if "plan_only" in execute_mode:
            real_answer = icl["answer"]
            icl[message_key].append({"role": "user", "content": f"question: {question} \n"})
            icl[message_key].append({"role": "user", "content": additive_prompt_results})
            icl[message_key].append({"role": "assistant", "content": f"{real_answer} \n"})
        elif "plan_code" in execute_mode:
            real_answer = icl["answer"]
            icl[message_key].append({"role": "user", "content": f"question: {question} \n"})
            icl[message_key].append({"role": "user", "content": additive_prompt_results})
            icl[message_key].append({"role": "assistant", "content": f"{real_answer} \n"})            
        elif "trace" in execute_mode:
            real_answer = icl["answer"]
            icl[message_key].append({"role": "user", "content": f"question: {question} \n"})
            icl[message_key].append({"role": "user", "content": additive_prompt_results})
            icl[message_key].append({"role": "assistant", "content": f"{real_answer} \n"})

        in_context_messages += icl[message_key]
        

    print(f"Number of in context overall composed messeges: {len(in_context_messages)}")

    predictions = []
    predictions.append({"index": -1,"in_context_examples": in_context_messages,})

    for i, sample in tqdm(enumerate(samples), total=len(samples)):
        messages = in_context_messages + [{"role": "user", "content": f"######\n{sample[question_key]}"}]
        #get the overall length of the message
        length = 0
        for message in messages:
            length += len(message["content"].split())
        

        if execute_mode == "plan_only":
            # from copy import deepcopy
            # old_messages = deepcopy(messages)
            icl_plan_only, predicted_plan = generate_plan(model, num_samples, additive_prompt_plans, messages)
            #check if old messages are the same as the new messages
            # assert old_messages == messages, "Messages have been modified"
            # from pprint import pprint
            # pprint(icl_plan_only)
            # print("_"*50)
            # os._exit(0)

            predicted_answer = generate_final_answer(model, question_key, additive_prompt_results, sample, icl_plan_only, predicted_plan)
            code = ""
            predicted_traces = ""
            predicted_llm_answer = extract_last_answer(predicted_answer)

        elif execute_mode == "plan_code":
            

            #generate the plan with ICLs
            icl_plan_only, predicted_plan = generate_plan(model, num_samples, additive_prompt_plans, messages)
            
            #generate the code with ICLs
            icl_plan_code, predicted_code = generate_code(model, num_samples, additive_prompt_plans, additive_prompt_code, messages, predicted_plan)

            # from pprint import pprint
            # pprint(icl_plan_code)
            # print("_"*50)
            # os._exit(0)

            #generate the answer from here
            predicted_answer = generate_final_answer(model, question_key, additive_prompt_results, sample, icl_plan_code, predicted_code)

            code = extract_code_from_text(predicted_code)
            predicted_llm_answer = extract_last_answer(predicted_answer)
            predicted_traces = ""
                
        elif execute_mode == "trace_replace":
            ...
        
        elif execute_mode == "trace":

            #generate the plan with ICLs
            icl_plan_only, predicted_plan = generate_plan(model, num_samples, additive_prompt_plans, messages)
            
            #generate the code with ICLs
            icl_plan_code, predicted_code = generate_code(model, num_samples, additive_prompt_plans, additive_prompt_code, messages, predicted_plan)

            #generate the trace with ICLs

            icl_plan_code_trace, predicted_traces = generate_traces(model, num_samples, additive_prompt_plans, additive_prompt_code, additive_prompt_traces, messages, predicted_plan, predicted_code)

            # pprint(icl_plan_code_trace)
            # print("_"*50)
            # os._exit(0)

            #generate the answer from here
            predicted_answer = generate_final_answer(model, question_key, additive_prompt_results, sample, icl_plan_code_trace, predicted_traces)

            code = extract_code_from_text(predicted_code)
            predicted_llm_answer = extract_last_answer(predicted_answer)


        predictions.append({
            "index": i,
            "question": sample[question_key],
            "plan": predicted_plan,
            "trace": predicted_traces,
            "code": code,
            "true_answer": sample["answer"],
            "predicted_answer_raw": predicted_answer,
            "predicted_llm_answer": predicted_llm_answer
        })

            # pprint(f"plan: {predicted_plan}")
            # print("_"*50)
            # pprint(f"code: {code}")
            # print("_"*50)
            # pprint(f"trace: {predicted_traces}")
            # print("_"*50)
            # pprint(f"predicted answer: {predicted_answer}")
            # pprint(f"predicted answer parsed: {predicted_llm_answer}")
            # print(f"True answer: {sample['answer']}")
            # break

    if 'json' in output_dir:
        base_dir = os.path.dirname(output_dir)
        process_id = output_dir.split("_")[-1].split(".")[0]
        prompt_file_name = os.path.basename(prompt_dir)
        prompt_type = prompt_file_name.split(".")[0]
        output_file_name = f"model={model.model_name}_execmode={execute_mode}_prompt={prompt_type}_process={process_id}_icl={num_samples}_output.json"
        output_dir = os.path.join(base_dir, output_file_name)
        print(f"Output dir adjusted to: {output_dir}")

        with open(output_dir, 'w') as file:
            json.dump(predictions, file, indent=4)
    else:
        output_dir = os.path.join(output_dir, data_name)
        os.makedirs(output_dir, exist_ok=True)
        prompt_file_name = os.path.basename(prompt_dir)
        prompt_type = prompt_file_name.split(".")[0]
        output_file_name = f"{model.model_name}_{execute_mode}_{prompt_type}_icl={num_samples}_output.json"
        output_dir = os.path.join(output_dir, output_file_name)
        with open(output_dir, 'w') as file:
            json.dump(predictions, file, indent=4)

    return output_dir

def run_gpt(model_config_path:str, api_key: str, data_path: str, data_name: str, prompt_dir: str, icl_path:str, output_dir: str, exec_mode:str, num_samples:int = 10):
    kwargs = get_kwargs_from_config(model_config_path)
    model_name = kwargs.get('model', 'gpt-3.5-turbo')
    if 'gpt' in model_name:
        model = OpenAIGPT(api_key, **kwargs)
    elif 'command' in model_name:
        model = CommandR(api_key, **kwargs)
    else:
        print("Model taken from TogetherAI")
        model = LLM_API(api_key, **kwargs)
    
    output_dir = os.path.join(output_dir, data_name)
    os.makedirs(output_dir, exist_ok=True)
    if "/" in model_name:
        model_name = model_name.split("/")[-1]
        print(f"New Model name: {model_name}")
    output_dir = os.path.join(output_dir, f"{model_name}_output.json")

    prompts = []
    icls = []
    if 'icl' in exec_mode:
        prompt_dir_icl = os.path.join(prompt_dir, 'plan_icls.txt')
        with open(prompt_dir_icl, 'r') as file:
            icls = file.read()
    
        icls = icls.split("##################")
        icls = [icl.strip() for icl in icls if icl.strip() != '']

    if 'standard' in exec_mode:
        prompt_dir_standard = os.path.join(prompt_dir, 'standard.txt')
        with open(prompt_dir_standard, 'r') as file:
            prompts = file.read()
        
        prompts = prompts.split("##################")
        prompts = [prompt.strip() for prompt in prompts if prompt.strip() != '']


    if os.path.isfile(prompt_dir):
        with open(prompt_dir, 'r') as file:
            prompts = file.read()
        prompts = prompts.split("##################")
        prompts = [prompt.strip() for prompt in prompts if prompt.strip() != '']


    print(f"Data path: {data_path}")
    if os.path.isfile(data_path):
        if 'jsonl' in data_path:
            samples = []
            with open(data_path, 'r') as file:
                for line in file:
                    samples.append(json.loads(line))
        else:
            samples = json.load(open(data_path, 'r'))

    # samples = samples[:2]
    print(f"Number of samples: {len(samples)}")

    if "plans_only" in output_dir:
        prompts = [prompts[0]] + icls
        parallel_writes(add_plans_to_questions, (samples, prompts, output_dir, model))
    elif "plans_and_code" in output_dir:
        parallel_writes(add_code_to_questions, (samples, prompts, output_dir, model))
    elif "plans_code_traces" in output_dir:
        add_traces_to_questions((samples, data_path, prompts, output_dir))
    elif "final_predictions" in output_dir:

        if 'test' in data_path:
            data_mode = 'test'
        elif 'dev' in data_path:
            data_mode = 'dev'
        else:  
            data_mode = 'train'

        samples, question_key = load_data(data_name, data_path, data_mode)

        # samples = samples[:10]
        parallel_writes(inference, (model, samples, question_key, data_name, icl_path, num_samples, output_dir, prompts, exec_mode, prompt_dir))
        # inference(model, samples, question_key, data_name, icl_path, num_samples, output_dir, prompts, exec_mode, prompt_dir)


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Inference using OpenAI GPT')
    parser.add_argument('--model_config_path', type=str, help='Path to the model config')
    parser.add_argument('--api_key', type=str, help='API key')
    parser.add_argument('--prompt_dir', type=str, help='Path to the directory with prompts')
    parser.add_argument('--data_path', type=str, help='Path to the data')

    parser.add_argument('--icl_path', type=str, help='Path to the in context learning samples', default=None)
    parser.add_argument('--data_name', type=str, help='Data name')
    parser.add_argument('--output_dir', type=str, help='Output directory')

    parser.add_argument('--execute_mode', type=str, help='Mode of execution', default='standard')
    parser.add_argument('--num_samples', type=int, help='Number of in context examples samples to pick', default=8)


    args = parser.parse_args()

    run_gpt(args.model_config_path, args.api_key, args.data_path, args.data_name, args.prompt_dir, args.icl_path, args.output_dir, args.execute_mode, args.num_samples)


# example usage:
# python run_gpt.py --model_name "openai-gpt" --api_key "API_KEY" --prompt_dir "prompts.txt" --data_path "data.json" --data_name "plans_only" --output_dir "output/plans_only.json"

#initial to plans_only
# python llmsearch/run_gpt.py --model_config_path llmsearch/models/gpt4_conf.yaml --api_key "API_KEY" --prompt_dir "prompts/gsm8k/" --data_path samples/initial/gsm8k/picked_samples.json --icl_path ss --data_name "gsm8k" --output_dir samples/plans_only --execute_mode "icl+standard" --num_samples 2 ;

#plans_only to plans_and_code
# python llmsearch/run_gpt.py --model_config_path llmsearch/models/gpt4_conf.yaml --api_key "API_KEY" --prompt_dir "prompts/gsm8k/" --data_path samples/plans_only/gsm8k/gpt-4-turbo_output.json --icl_path sos --data_name "gsm8k" --output_dir samples/plans_and_code --execute_mode "standard" --num_samples 2 ;

# plans_and_code to plans_code_traces
# python llmsearch/run_gpt.py --model_config_path llmsearch/models/gpt4_conf.yaml --api_key "API_KEY" --prompt_dir "prompts/gsm8k/" --data_path samples/plans_and_code/gsm8k/gpt-4-turbo_output.json --icl_path sos --data_name "gsm8k" --output_dir samples/plans_code_traces --execute_mode "standard" --num_samples 2

# inferenc with ICLs
# python llmsearch/run_gpt.py --model_config_path llmsearch/models/command_r_conf.yaml --api_key "API_KEY" --prompt_dir "prompts/gsm8k/standard.txt" --data_path data/gsm8k/test.jsonl --icl_path samples/plans_code_traces/gsm8k/gpt-4-turbo_output.json --data_name "gsm8k" --output_dir samples/final_predictions --execute_mode "trace" --num_samples 6;



#inference mode
#LLM_search python llmsearch/run_gpt.py --model_config_path llmsearch/models/gpt3_5_conf.yaml --api_key "API_KEY" --prompt_dir "prompts/SQA/standard.txt" --data_path data/SQA/test.jsonl --icl_path samples/plans_code_traces/SQA/gpt-4-turbo_output.json --data_name "SQA" --output_dir samples/final_predictions --execute_mode "trace" --num_samples 2;


