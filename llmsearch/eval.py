import json
import re
import os
import pandas as pd
from tqdm import tqdm
from typing import List, Tuple
import pickle
from llmsearch.run_prolog import run_prolog
from llmsearch.prompting_utils import create_temp_file, extract_code_from_text


def exact_match(true_answer, predicted_answer):

    # if true_answer.strip().lower() != predicted_answer.strip().lower() and true_answer.strip().lower() in predicted_answer.strip().lower():
    #     print(f"True: {true_answer}")
    #     print(f"Predicted: {predicted_answer}")
    #     print("_"*50)

    # due to parsing issues, the answers might have newlines 
    # we need to split the answers by newlines and check if the true answer is present in the predicted answer
    predicted_answer = predicted_answer.split("\n")

    #this iteration is only for GSM8k dataset otherwise the list will contain only one element
    for ans in predicted_answer:
        if true_answer.strip().lower() == ans.strip().lower():
            return True
    return False

    # return true_answer.strip().lower() in predicted_answer.strip().lower()


def soft_exact_match(true_answer, predicted_answer):
    return true_answer.strip().lower() in predicted_answer.strip().lower()



def evaluate(samples: List[dict], dataset_name: str,answer_prediction_keys: Tuple[str, str], eval_type: str, eval_mode: str) -> float:
    counter_correct = 0
    counter_overall = 0
    code_run_counter = 0

    true_answer_key, predicted_answer_key = answer_prediction_keys

    for sample in tqdm(samples, total=len(samples)):

        #index -1 is reserved for in context examples
        if sample['index'] < 0:
            continue
    
        counter_overall += 1

        if eval_type == "trace":
            if eval_mode == "exact":

                if type(sample[true_answer_key]) == list:
                    sample[true_answer_key] = "\n".join(sample[true_answer_key]).strip()


                if exact_match(sample[true_answer_key], sample[predicted_answer_key]):
                    counter_correct += 1
                    # print(f"True: {sample[true_answer_key]}")
                    # print(f"Predicted: {sample[predicted_answer_key]}")
                    # print("_"*50)
                else:
                    # print(f"True: {sample[true_answer_key]}")
                    # print(f"Predicted: {sample[predicted_answer_key]}")
                    # print("_"*50)
                    ...

        elif eval_type == "trace_only":
            if eval_mode == "exact":
                trace_answer_key = "predicted_answer_trace"
                if soft_exact_match(sample[true_answer_key], sample[trace_answer_key]):
                    counter_correct += 1
                else:
                    print(f"True: {sample[true_answer_key]}")
                    print(f"Predicted: {sample[trace_answer_key]}")
                    print("_"*50)
                    ...

        elif eval_type == "code":
            if eval_mode == "exact":
                code_runs = False
                code = extract_code_from_text(sample['code'])

                file_name, file_path = create_temp_file(code, dataset_name)
                results, results_parsed = run_prolog(file_path)

                print("Code Results: ", results)

                if results is not None:
                    code_runs = True
                else:
                    continue

                code_result = sanitize_code_answers(results_parsed, dataset_name)
                code_result = "Code execution failed" if not code_runs else code_result
                print(f"Coded Result: {code_result}")
                if exact_match(sample[true_answer_key], code_result):
                    counter_correct += 1

                #remove the temporary file
                os.remove(file_path)
                code_run_counter += code_runs


    results = {"Accuracy": counter_correct / counter_overall}
    if eval_type == "code":
        results["code_runs_perc"] = code_run_counter / counter_overall
        results["code_runs_acc"] = counter_correct / code_run_counter

    return results

def get_dataset_name(data_path: str) -> str:
    if "sqa" in data_path.lower():
        return "SQA"
    elif "aqua" in data_path.lower():
        return "AQUA"
    elif "gsm8k" in data_path.lower():
        return "GSM8k"
    elif "multiarith" in data_path.lower():
        return "MultiArith"
    elif "asdiv" in data_path.lower():
        return "ASDiv"
    elif "clutrr" in data_path.lower():
        return "CLUTRR"
    elif "svamp" in data_path.lower():
        return "SVAMP"
    elif "sports" in data_path.lower():
        return "Sports"
    elif "date" in data_path.lower():
        return "Date"
    else:
        raise ValueError("Invalid dataset")


def get_all_samples_sets(data_path: str, filter_execmode:str) -> List[List[dict]]:
    samples_sets = []
    for file_name in os.listdir(data_path):

        if filter_execmode is not None and filter_execmode not in file_name:
            continue

        if file_name.endswith(".json") and "model=" in file_name:
            with open(os.path.join(data_path, file_name), 'r') as f:
                samples = json.load(f)
                samples_sets.append((samples, file_name))
    return samples_sets

def get_trace_answers(trace: str) -> List[str]:
    answers = []
    for line in trace.split("\n"):
        if "Result" in line:
            answer = line.split("'Result':")
            if len(answer) > 1:
                answer = answer[1].strip()
                answer = answer[:-1]
            else:
                answer = "Search Failed"
            answers.append(answer)
    
    answers_filtered = []
    for answer in answers:
        if "Search Failed" in answer:
            continue
        answers_filtered.append(answer)

    return answers_filtered


def extract_clutrr_answers(predicted_answer_raw: str) -> str:
    answer = predicted_answer_raw
    with open("llmsearch/trans_rules.pkl", 'rb') as f:
        relations = pickle.load(f)

    all_rel_types = list(set(relations.values()))

    for key in relations:
        from_node, to_node = key
        all_rel_types.append(from_node)
        all_rel_types.append(to_node)

    all_rel_types = list(set(all_rel_types))

    #find all the relations in the predicted answer
    relations_found = []
    for rel in all_rel_types:
        if rel in predicted_answer_raw:
            relations_found.append(rel)

    #take the longest relation
    if len(relations_found) > 0:
        answer = sorted(relations_found, key=len, reverse=True)[0]
        # answer = relations_found[-1]
        # answer = "\n".join(answer)
        print(answer)
        print("_"*50)
    else:
        answer = predicted_answer_raw

    return answer

def extract_sqa_answers(predicted_answer_raw: str) -> str:
    yes_no_regex = r"(yes|no)"
    answer = re.search(yes_no_regex, predicted_answer_raw, re.IGNORECASE)
    if answer is not None:
        return answer.group(0)
    return ""

def extract_sports_answers(predicted_answer_raw: str) -> str:
    one_zero_regex = r"(1|0)"
    answer = re.search(one_zero_regex, predicted_answer_raw, re.IGNORECASE)
    if answer is not None:
        return answer.group(0)
    return ""

def extract_multiarith_answers(predicted_answer_raw: str) -> str:
    ans = extract_gsm_answers(predicted_answer_raw)
    return ans

def extract_ASDiv_answers(predicted_answer_raw: str) -> str:
    ans = extract_gsm_answers(predicted_answer_raw)
    return ans


def extract_gsm_answers(predicted_answer_raw: str) -> str:

    if "######Here is the answer" in predicted_answer_raw and "<|im_start|>" in predicted_answer_raw:
        #take everything comming after ######Here is the answer:<|im_end|>
        predicted_answer_raw = predicted_answer_raw.split("######Here is the answer")[1]
        #take everything between <|im_start|> and <|im_end|> multiline
        in_between = re.findall(r"<\|im_start\|>(.*?)<\|im_end\|>", predicted_answer_raw, re.DOTALL)
        if len(in_between) > 0:
            predicted_answer_raw = in_between[0] 
        else:
            # print("No answer found")
            # print(predicted_answer_raw)
            # print("_"*50)
            ...
        # print(predicted_answer_raw)
        # print("_"*50)

    #number even if it has a dot in it or comma 
    numbers = re.findall(r"[-+]?\d*[\.,\,]\d+|\d+", predicted_answer_raw)

    numbers = [number.replace(",", "") for number in numbers]
    numbers = [number.replace("$", "") for number in numbers]
    numbers = [number.replace("%", "") for number in numbers]
    # numbers = [number.replace(".", "") for number in numbers]

    number_variations = []
    for number in numbers:
        #it can be a float or an integer or a decimal seperator
        if "." in number:
            number_variations.append(str(int(float(number))))
            number_variations.append(str(int(number.replace(".", ""))))
        else:
            number_variations.append(number)

    numbers = number_variations
        

    ans = "\n".join(numbers)
    if ans.strip() == "" and predicted_answer_raw.strip() != "":
        ans = predicted_answer_raw
    elif ans.strip() == "" and predicted_answer_raw.strip() == "":
        ans = ""

    return ans

def extract_svamp_answers(predicted_answer_raw: str) -> str:
    numbers = re.findall(r"[-+]?\d*\.\d+|\d+", predicted_answer_raw)
    numbers = [number.replace(",", "") for number in numbers]
    numbers = [number.replace("$", "") for number in numbers]
    numbers = [number.replace("%", "") for number in numbers]
    # numbers = [str(int(float(number))) if "." in number else number for number in numbers]

    ans = "\n".join(numbers)
    if ans.strip() == "" and predicted_answer_raw.strip() != "":
        ans = predicted_answer_raw
    elif ans.strip() == "" and predicted_answer_raw.strip() == "":
        ans = ""

    return ans

def extract_aqua_answers_old(predicted_answer_raw: str, paragraph: str) -> str:

    numbers = re.findall(r"[-+]?\d*\.\d+|\d+", predicted_answer_raw)
    numbers = [number.replace(",", "") for number in numbers]
    numbers = [number.replace("$", "") for number in numbers]
    numbers = [number.replace("%", "") for number in numbers]
    numbers = [str(int(float(number))) if "." in number else number for number in numbers]

    ans = "\n".join(numbers)
    if ans.strip() == "" and predicted_answer_raw.strip() != "":
        ans = predicted_answer_raw
    elif ans.strip() == "" and predicted_answer_raw.strip() == "":
        ans = ""

    # Answer option: ['A)36', 'B)15', 'C)17', 'D)5', 'E)7']" in the paragraph
    answer_options = re.findall(r"[A-E]\)\d+", paragraph)

    #pick the answer option that is in the answer
    for option in answer_options:
        if option[2:] in ans:
            ans = option

    return ans

def extract_aqua_answers(predicted_answer_raw: str) -> str:

    # <|im_start|>...<|im_end|>
    if "######Here is the answer" in predicted_answer_raw:
        #take everything comming after ######Here is the answer:<|im_end|>
        predicted_answer_raw = predicted_answer_raw.split("######Here is the answer")[1]
        #take everything between <|im_start|> and <|im_end|>
        in_between = re.findall(r"<\|im_start\|>(.*?)<\|im_end\|>", predicted_answer_raw)
        if len(in_between) > 0:
            predicted_answer_raw = in_between[0]            

    answer_options = re.findall(r"\b[A-E](?=[)\s:.]|$)", predicted_answer_raw)
    answer_options = list(set([i.strip() for i in answer_options]))
    for option in answer_options:
        if option[:1] in predicted_answer_raw:
            return option
        
    return predicted_answer_raw

def extract_date_answers(predicted_answer_raw: str) -> str:
    #regexp for MM/DD/YYYY
    date_regex = r"\b\d{1,2}\/\d{1,2}\/\d{4}\b"
    answer_options = re.findall(date_regex, predicted_answer_raw)

    predicted_answer = answer_options[-1] if len(answer_options) > 0 else predicted_answer_raw
    
    return predicted_answer



def sanitize_sqa_code_answers(predicted_answer_raw: List[dict]) -> str:
    if len(predicted_answer_raw) > 0:
        return 'yes'
    return 'no'

def sanitize_gsm8k_code_answers(predicted_answer_raw: List[dict]) -> str:
    if predicted_answer_raw is None:
        return ""
    
    if len(predicted_answer_raw) == 0:
        return ""
    
    answer_string = ""
    for ans_dict in predicted_answer_raw:
        # print(ans_dict)
        for key, value in ans_dict.items():
            answer_string += f"{key}: {value}\n"

    answer_string = extract_gsm_answers(answer_string)
    return answer_string

def sanitize_svamp_code_answers(predicted_answer_raw: List[dict]) -> str:
    if predicted_answer_raw is None:
        return ""
    
    if len(predicted_answer_raw) == 0:
        return ""
    
    answer_string = ""
    for ans_dict in predicted_answer_raw:
        # print(ans_dict)
        for key, value in ans_dict.items():
            answer_string += f"{key}: {value}\n"

    answer_string = extract_svamp_answers(answer_string)
    return answer_string

def sanitize_code_answers(predicted_answer_raw: List[dict], dataset_name: str) -> str:
    if dataset_name == "SQA":
        return sanitize_sqa_code_answers(predicted_answer_raw)
    elif dataset_name == "GSM8k":
        return sanitize_gsm8k_code_answers(predicted_answer_raw)
    elif dataset_name == "SVAMP":
        return sanitize_svamp_code_answers(predicted_answer_raw)
    return ""


def adjust_clutrr_samples(samples: List[dict]) -> List[dict]:
    for sample in samples:
        if sample['index'] < 0:
            continue
        sample["predicted_answer_trace"] = get_trace_answers(sample["trace"])
        sample["predicted_answer_trace"] = '\n'.join(sample["predicted_answer_trace"])
        # sample["predicted_answer_raw"] = extract_clutrr_answers(sample["predicted_answer_raw"])
        sample["true_answer"] = sample["true_answer"].split("#### ")[-1].strip()
        if "####" in sample["predicted_answer_raw"]:
            sample["predicted_answer_raw"] = sample["predicted_answer_raw"].split("#### ")[-1].strip()
            sample["predicted_answer_raw"] = extract_clutrr_answers(sample["predicted_answer_raw"])
        else:
            sample["predicted_answer_raw"] = extract_clutrr_answers(sample["predicted_answer_raw"])
         
        if sample["predicted_answer_raw"] == "":
            sample["predicted_answer_raw"] = sample["predicted_answer_trace"]
        if sample["predicted_answer_raw"].strip() == "":
            sample["predicted_answer_raw"] = ""
    return samples


def adjust_multiarith_samples(samples: List[dict]) -> List[dict]:
    print("Adjusting MultiArith samples")
    for sample in samples:
        if sample['index'] < 0:
            continue
        sample["predicted_answer_trace"] = get_trace_answers(sample["trace"])
        sample["predicted_answer_trace"] = '\n'.join(sample["predicted_answer_trace"])
        sample["predicted_answer_raw"] = extract_multiarith_answers(sample["predicted_answer_raw"])
        if sample["predicted_answer_raw"] == "" or sample["predicted_answer_raw"].strip() == "":
            sample["predicted_answer_raw"] = extract_multiarith_answers(sample["predicted_answer_trace"])
        if sample["predicted_answer_raw"].strip() == "":
            sample["predicted_answer_raw"] = ""
    return samples

def adjust_ASDiv_samples(samples: List[dict]) -> List[dict]:
    print("Adjusting ASDiv samples")
    for sample in samples:
        if sample['index'] < 0:
            continue
        sample["predicted_answer_trace"] = get_trace_answers(sample["trace"])
        sample["predicted_answer_trace"] = '\n'.join(sample["predicted_answer_trace"])
        sample["predicted_answer_raw"] = extract_ASDiv_answers(sample["predicted_answer_raw"])
        if sample["predicted_answer_raw"] == "" or sample["predicted_answer_raw"].strip() == "":
            sample["predicted_answer_raw"] = extract_ASDiv_answers(sample["predicted_answer_trace"])
        if sample["predicted_answer_raw"].strip() == "":
            sample["predicted_answer_raw"] = ""
    return samples

def adjust_gsm_samples(samples: List[dict]) -> List[dict]:
    print("Adjusting GSM samples")
    for sample in samples:
        if sample['index'] < 0:
            continue
        sample["predicted_answer_trace"] = get_trace_answers(sample["trace"])
        sample["predicted_answer_trace"] = '\n'.join(sample["predicted_answer_trace"])
        sample["predicted_answer_raw"] = extract_gsm_answers(sample["predicted_answer_raw"])
        if sample["predicted_answer_raw"] == "" or sample["predicted_answer_raw"].strip() == "":
            sample["predicted_answer_raw"] = extract_gsm_answers(sample["predicted_answer_trace"])
        if sample["predicted_answer_raw"].strip() == "":
            sample["predicted_answer_raw"] = ""
    return samples

def adjust_svamp_samples(samples: List[dict]) -> List[dict]:
    print("Adjusting SVAMP samples")
    for sample in samples:
        if sample['index'] < 0:
            continue
        sample["predicted_answer_trace"] = get_trace_answers(sample["trace"])
        sample["predicted_answer_trace"] = '\n'.join(sample["predicted_answer_trace"])
        sample["predicted_answer_raw"] = extract_svamp_answers(sample["predicted_answer_raw"])
        if sample["predicted_answer_raw"] == "" or sample["predicted_answer_raw"].strip() == "":
            sample["predicted_answer_raw"] = sample["predicted_answer_trace"]
        if sample["predicted_answer_raw"].strip() == "":
            sample["predicted_answer_raw"] = ""
    return samples

def adjust_sqa_samples(samples: List[dict]) -> List[dict]:
    for sample in samples:
        if sample['index'] < 0:
            continue
        sample["predicted_answer_trace"] = get_trace_answers(sample["trace"])
        sample["predicted_answer_trace"] = ['no'] if len(sample["predicted_answer_trace"]) == 0 else sample["predicted_answer_trace"]
        # print(sample["predicted_answer_trace"])
        sample["predicted_answer_raw"] = extract_sqa_answers(sample["predicted_answer_raw"])
        sample["predicted_answer_trace"] = '\n'.join(sample["predicted_answer_trace"])
        if sample["predicted_answer_raw"] == "":
            sample["predicted_answer_raw"] = sample["predicted_answer_trace"] 
        if sample["predicted_answer_raw"].strip() == "":
            sample["predicted_answer_raw"] = ""

    return samples

def adjust_date_samples(samples: List[dict]) -> List[dict]:
    for sample in samples:
        if sample['index'] < 0:
            continue
        sample["predicted_answer_trace"] = get_trace_answers(sample["trace"])
        sample["predicted_answer_trace"] = '\n'.join(sample["predicted_answer_trace"])
        sample["predicted_answer_raw"] = sample["predicted_answer_raw"].replace("The correct answer is:", "")
        sample["predicted_answer_raw"] = extract_date_answers(sample["predicted_answer_raw"])
        if sample["predicted_answer_raw"].strip() == "":
            sample["predicted_answer_raw"] = ""
    return samples

def adjust_sports_samples(samples: List[dict]) -> List[dict]:
    for sample in samples:
        if sample['index'] < 0:
            continue
        sample["predicted_answer_trace"] = get_trace_answers(sample["trace"])
        sample["predicted_answer_trace"] = '\n'.join(sample["predicted_answer_trace"])
        sample["predicted_answer_raw"] = sample["predicted_answer_raw"].replace("The correct answer is:", "")
        sample["predicted_answer_raw"] = extract_sports_answers(sample["predicted_answer_raw"])
        if sample["predicted_answer_raw"].strip() == "":
            sample["predicted_answer_raw"] = ""

        if type(sample["true_answer"]) == int:
            sample["true_answer"] = str(sample["true_answer"])

    return samples


def adjust_aqua_samples(samples: List[dict]) -> List[dict]:
    for sample in samples:
        if sample['index'] < 0:
            continue
        sample["predicted_answer_trace"] = get_trace_answers(sample["trace"])
        sample["predicted_answer_trace"] = '\n'.join(sample["predicted_answer_trace"])
        sample["predicted_answer_raw"] = sample["predicted_answer_raw"].replace("The correct answer is:", "")
        sample["predicted_answer_raw"] = extract_aqua_answers(sample["predicted_answer_raw"])
        # if sample["predicted_answer_raw"] == "":
        #     sample["predicted_answer_raw"] = sample["predicted_answer_trace"]
        if sample["predicted_answer_raw"].strip() == "":
            sample["predicted_answer_raw"] = ""
        
        # print(sample["predicted_answer_trace"])
        # print("_"*50)
    return samples


def adjust_samples(samples: List[dict], dataset_name: str) -> List[dict]:
    if dataset_name == "SQA":
        samples = adjust_sqa_samples(samples)
    elif dataset_name == "GSM8k":
        samples = adjust_gsm_samples(samples)
    elif dataset_name == "MultiArith":
        samples = adjust_multiarith_samples(samples)
    elif dataset_name == "ASDiv":
        samples = adjust_ASDiv_samples(samples)
    elif dataset_name == "Date":
        samples = adjust_date_samples(samples)
    elif dataset_name == "Sports":
        samples = adjust_sports_samples(samples)
    elif dataset_name == "AQUA":
        samples = adjust_aqua_samples(samples)
    elif dataset_name == "CLUTRR":
        samples = adjust_clutrr_samples(samples)
    elif dataset_name == "SVAMP":
        samples = adjust_svamp_samples(samples)
    
    return samples


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--data_path", type=str, required=True)
    parser.add_argument("--eval_type", type=str, required=True)
    parser.add_argument("--eval_mode", type=str, required=True)
    parser.add_argument("--filter_execmode", type=str, default=None)
    parser.add_argument("--recalculate", action="store_true", default=False)

    args = parser.parse_args()

    file_flag = False
    if os.path.isdir(args.data_path):
        samples_sets = get_all_samples_sets(args.data_path, args.filter_execmode)
    else:
        with open(args.data_path, 'r') as f:
            samples = json.load(f)
            file_flag = True

    dataset_name = get_dataset_name(args.data_path)


    answer_prediction_keys = ("true_answer", "predicted_answer_raw")

    if file_flag:
        print(f"Loaded {len(samples)} samples")
        samples = adjust_samples(samples, dataset_name)

        results = evaluate(samples, dataset_name, answer_prediction_keys, args.eval_type, args.eval_mode)
        print(f"{args.eval_type} {args.eval_mode} accuracy: {results['Accuracy']:0.2f}")
        print(results)

        #save results 
        os.makedirs("results", exist_ok=True)

        results_meta = {}
        results['file_name'] = args.data_path
        results_meta[args.data_path] = results
        #append if the file already exists
        #file exists check
        if os.path.exists(f"results/{dataset_name}_{args.eval_type}_{args.eval_mode}.json"):
            with open(f"results/{dataset_name}_{args.eval_type}_{args.eval_mode}.json", 'r') as f:
                print("Appending to existing results")
                old_results_meta = json.load(f)
                    
            old_results_meta[args.data_path] = results
            results_meta = old_results_meta

        with open(f"results/{dataset_name}_{args.eval_type}_{args.eval_mode}.json", 'w') as f:
            json.dump(results_meta, f, indent=4)
        

    else:
        print(f"Loaded {len(samples_sets)} final prediction sets")
        samples_sets, file_names  = [x[0] for x in samples_sets], [x[1] for x in samples_sets]
        accuracies = {}

        print(f"Evaluating {dataset_name} {args.eval_type} {args.eval_mode}")
        if os.path.exists(f"results/overall_{dataset_name}_{args.eval_type}_{args.eval_mode}.csv"):
            df = pd.read_csv(f"results/overall_{dataset_name}_{args.eval_type}_{args.eval_mode}.csv")
            df = df.sort_values(by='Accuracy', ascending=False)
            #Lose the first column
            df = df.iloc[:, 1:]
            print(df.to_markdown(index=False))
            print(f"Results already exist for {dataset_name} {args.eval_type} {args.eval_mode}")

            if not args.recalculate:
                exit()


        for samples, file_name in zip(samples_sets, file_names):
            # if "mix" not in file_name.lower():
            #     continue

            samples = adjust_samples(samples, dataset_name)
            results = evaluate(samples, dataset_name, answer_prediction_keys, args.eval_type, args.eval_mode)
            accuracies[file_name] = results
        

        #create fields from file names, i.e. field=value
        field_names = set()
        for file_name in file_names:
            for field in file_name.split("_"):
                if "=" in field:
                    field_name, field_value = field.split("=")
                    accuracies[file_name][field_name] = field_value
                    field_names.add(field_name)

        # print accuracies as a table
        df = pd.DataFrame(accuracies).T
        df = df.sort_values(by='Accuracy', ascending=False)
        # print(df.to_string(index=False))
        #make markdown table
        print(df.to_markdown(index=False))

        os.makedirs("results", exist_ok=True)

        df.to_csv(f"results/overall_{dataset_name}_{args.eval_type}_{args.eval_mode}.csv")



# bash
# python llmsearch/eval.py --data_path samples/final_predictions/SQA/model=command-r-plus_execmode=trace_prompt=standard_icl=6_output.json --eval_type trace --eval_mode exact