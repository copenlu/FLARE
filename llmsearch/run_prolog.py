from pyswip import Prolog
from typing import List, Tuple
import subprocess
import argparse
import os
import subprocess
from concurrent.futures import ThreadPoolExecutor
import subprocess
from multiprocessing import Pool
from swiplserver import PrologMQI
import janus_swi as janus
import threading
import sys
import re
import signal
from tqdm import tqdm
import shutil



def add_meta_commands(file_path: str, meta_path: str):

    with open(meta_path, 'r') as file:
        meta_commands = file.readlines()

    lines, query = get_code_from_file(file_path)

    if 'query' not in query:
        raise ValueError('Query format is not correct')
    
    if len(query.split(':-')) > 1:
        lines += [query]
    else:
        full_stop = '' if query.endswith('.') else '.'
        lines += [f'query :- {query}{full_stop}']

    lines += meta_commands

    if os.path.exists(f"{file_path.split('.')[0]}_meta_added.pl"):
        os.remove(f"{file_path.split('.')[0]}_meta_added.pl")

    with open(f"{file_path.split('.')[0]}_meta_added.pl", 'w') as file:
        for line in lines:
            file.write(line + '\n')

    return lines
        

def get_code_from_file(file_path: str) -> Tuple[List[str], str]:
    # query is the last line of the file
    with open(file_path, 'r') as file:
        lines = file.readlines()

    lines = [line.strip() for line in lines if line.strip() != '' or 'prolog' in line.lower()]
    
    if 'query' in lines[-1] and ":-" not in lines[-1]:
        query = lines[-1]
    elif 'query' in lines[-1] and ":-" in lines[-1]:
        query = 'query.'
    elif len([line for line in lines if 'query' in line]) > 0:
       query = 'query.'
    else:
        raise ValueError('Query not found in the file')

    if query.startswith('%'):
        query = query.replace('%', '').strip()
    if query.startswith('?-'):
        query = query.replace('?-', '').strip()
    if query.endswith('.'):
        query = query[:-1]

    print(f"Query: {query}")

    return lines, query


def query_signature_from_code(code: List[str]) -> str:
    query = [line for line in code if 'query' in line]
    if len(query) == 0:
        return None
    query = query[-1]

    signature_regex = re.compile(r"query\((.*?)\)")
    if signature_regex.search(query):
        query = signature_regex.search(query).group(1)
        query = f"%query({query})."
    else:
        query = None
        
    return query

def sanitize_code(code: str) -> str:
    lines_sanitized = []
    lines = code.strip().split('\n')


    lines = [line.strip() for line in lines if line.strip() != '' or 'prolog' in line.lower()]
    if len(lines) == 0:
        return code
    
    if lines[0] == 'prolog':
        lines = lines[1:]

    #if read in any line, remove it
    if any('read' in line for line in lines):
        lines = [line for line in lines if 'read' not in line]
        print("Read command found in the code. Removed it.")

    if any('forall' in line for line in lines):
        lines = [line for line in lines if 'forall' not in line]
        print("Forall command found in the code. Removed it.")
    
    if 'query' in lines[-1] and ":-" not in lines[-1]:
        query = lines[-1]
        if not lines[-1].startswith('%'):
            query = f"%{query}"
    elif 'query' in lines[-1] and ":-" in lines[-1]:
        lines[-1] = lines[-1].replace('%', '')
        query = '%query.'
    elif len([line for line in lines if 'query' in line]) > 0:
       query = '%query.'
    else:
        print("Query not found in the file")
        print(f"Last several lines: {lines[-5:]}")
        query = ''

    query = query_signature_from_code(lines) if query_signature_from_code(lines) is not None else query

    # if query.startswith('%'):
    #     query = query.replace('%', '').strip()
    if query.startswith('?-'):
        query = query.replace('?-', '').strip()

    lines_sanitized += lines
    lines_sanitized += [query]
    lines_sanitized = "\n".join(lines_sanitized)

    return lines_sanitized
    

def timeout(limit):
    """Decorator to limit the execution time of a function to 'limit' seconds.
    If the function execution exceeds the limit, None is returned."""
    def decorator(func):
        def wrapper(*args, **kwargs):
            # Helper function to run the actual function in a separate thread
            result = [None]  # A mutable object to store the function result
            def run_function():
                result[0] = func(*args, **kwargs)
            
            # Create a thread to run the function
            thread = threading.Thread(target=run_function)
            thread.start()
            thread.join(timeout=limit)

            # Check if the thread is still alive after the wait
            if not thread.is_alive():
                thread.join()  # Make sure to join the thread to clean up properly
                return result[0]  # Return the result of the function
            else:
                print(f"Function {func.__name__} timed out after {limit} seconds")
                # thread.join()
                print("Thread joined")
                return None, None

        return wrapper
    return decorator


def replacement_per_dataset(dataset, results):
    if "SQA" in dataset:
        if len(results) > 0:
            results = "Yes"
        else:
            results = "No"
    elif "sports" in dataset:
        if len(results) > 0:
            results = 1
        else:
            results = 0

        # if True in results:
        #     results = "Yes"
        # else:
        #     results = "No"
    else:
        print("No replacement for this dataset")
        # results = results

    return results

@timeout(3)
def get_janus_answers(query):
    try:
        answers = janus.query(query)
        max_results = 40
        results = []
        for answer in answers:
            if len(results) >= max_results:
                break

            if len(answer) > 1 and "truth" in answer:
                filtered_answer = {key: value for key, value in answer.items() if key != "truth"}
                results.append(filtered_answer)
            elif len(answer) == 1:
                results.append(answer)
            else:
                continue

    except Exception as e:
        print(f"Error: {e}")
        results = None

    return results

def run_prolog(file_path: str, mode: str = "parse") -> List[str]:
    results = None
    try:
        # prolog = Prolog()
        _, query = get_code_from_file(file_path)
        # prolog.consult(file_path)
        # with PrologMQI(query_timeout_seconds=10) as mqi:
        #     with mqi.create_thread() as prolog_thread:
        #         consult_result = prolog_thread.query(f"consult('{file_path}')")
        #         results = prolog_thread.query("query.", query_timeout_seconds=10)
        #         print(type(results))

        janus.attach_engine()
        janus.detach_engine()

        janus.consult(file_path)
        # answers = janus.query(query)
        results = get_janus_answers(query)
        
        results = [result for result in results if result is not None]
        print(f"Results: {results}")
        # results = list(prolog.query(query, maxresult=40))
        
        results_parsed = replacement_per_dataset(file_path, results)

    except Exception as e:
        print(f"Error: {e}")
        results = None
        results_parsed = None

    # del prolog
    return results, results_parsed


def create_code_file(code: str, index: int, data_dir: str, model_name: str) -> str:

    file_path = os.path.join(data_dir, f"prolog_code-{index}_{model_name}.pl")
    if os.path.exists(file_path):
        os.remove(file_path)

    with open(file_path, 'w') as file:
        if "Code execution failed" in code:
            code = f"query :- write('Code execution failed')."
        code = sanitize_code(code)
        file.write(code)
    
    return file_path

def run_script(args):
    try:
        script_path, file_path = args
        # print(f"Running script {script_path} with file {file_path}")
        result = subprocess.run(
            [script_path, file_path], capture_output=True, text=True, check=True, timeout=5, preexec_fn=os.setsid)
        # print(f"Finished running script {script_path} with file {file_path}")
        # print("_"*50)
    except (subprocess.TimeoutExpired, subprocess.CalledProcessError) as e:
        print(f"Error: {e}")
        print(f"Timeout for running script {script_path} with file {file_path}")
        result = subprocess.CompletedProcess(args, returncode=1, stdout="Timeout", stderr="Timeout")

    return result

def run_prolog_trace_script(file_paths: List[str]):
    script_path = "./scripts/prolog_run_trace.sh"
    # Create a list of tuples where each tuple is (script_path, file_path)
    args = [(script_path, file_path) for file_path in file_paths]

    # Use Pool to execute the function in separate processes
    pool = Pool(processes=20)

    results = pool.map(run_script, args)
    pool.close()
    pool.join()
    # Process the results
    print(f"Completed running scripts for {len(results)} files")
    cleanup_command = "pkill -f -9 swipl"
    subprocess.run(cleanup_command, shell=True)
    print("Cleaned up swipl processes")
    for result, file_path in zip(results, file_paths):
        if result.stderr == "Timeout":
            #create a file with the same name as the file_path but with -trace_output.txt
            with open(file_path.replace('.pl', '-trace_output.txt'), 'w') as file:
                file.write("Timeout Error")
            print(f"Error running script for {file_path}: Timeout")
            continue
        if result.returncode == 0:
            print(f"Output for {file_path}:\n{result.stdout}")
        else:
            print(f"Error running script for {file_path}:\n{result.stderr}")


    
def get_traces_from_files(file_paths: List[str]) -> List[str]:
    traces = {}
    for file_path in file_paths:
        with open(file_path, 'r') as file:
            trace = file.read()
           #prolog_code-0_gpt-3.5-turbo-trace_output.txt
            index, _ = os.path.splitext(os.path.basename(file_path))
            index = int(index.split('_')[1].split('-')[1])
            # print(f"Index: {index}")
            # print(f"Trace: {trace}")
            # print("_"*50)
            traces[index] = trace
    return traces


def get_prolog_traces(data_path: str, samples: List[dict]) -> List[dict]:

    data_dir, file_name = os.path.split(data_path)
    model_name = file_name.split('_')[0]
    print(f"Data dir: {data_dir} and file name: {file_name}")

    file_paths = []
    for i, sample in tqdm(enumerate(samples), total=len(samples)):
        code = sample["code"]
        index = sample["index"]

        code_dir = os.path.join(data_dir, f"prolog_codes_{model_name}")
        if not os.path.exists(code_dir):
            os.makedirs(code_dir)

        file_path = create_code_file(code, index, code_dir, model_name)
        file_paths.append(file_path)

    run_prolog_trace_script(file_paths)
    print(f"Finished running prolog scripts for {len(file_paths)} files")

    trace_file_paths = [file_path.replace('.pl', '-trace_output.txt') for file_path in file_paths]
    traces = get_traces_from_files(trace_file_paths)
    print(f"Extracted traces for {len(traces)} files")
    return traces, file_paths
    

if __name__ == '__main__':

    parser = argparse.ArgumentParser(description='Run prolog code')
    parser.add_argument('file', type=str, help='Path to the file with prolog code')
    args = parser.parse_args()

    meta_path = os.path.join(os.path.dirname(__file__), 'meta_interp_tree.pl')

    results = run_prolog(args.file)
    print(results)

    lines = add_meta_commands(args.file, meta_path)



# example usage
# python run_prolog.py example.pl