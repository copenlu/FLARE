import json
import os
from typing import List, Dict

import matplotlib.pyplot as plt

# import for data analysis
import pandas as pd
import numpy as np

from tqdm.notebook import tqdm
import matplotlib.ticker as ticker

from llmsearch.parse_prolog import PrologTraceParser, sanitize_trace, replace_results, format_trace
from llmsearch.run_prolog import run_prolog, get_prolog_traces

import evaluate

from difflib import SequenceMatcher, unified_diff, HtmlDiff
import networkx as nx
from fuzzywuzzy import fuzz

import re
import shutil
from difflib import SequenceMatcher

from argparse import ArgumentParser


def load_input(file_path: str) -> Dict:
    with open(file_path, 'r') as f:
        data = json.load(f)
    return data

def load_all_results(results_dir: str) -> Dict:
    all_results = {}
    for file in tqdm(os.listdir(results_dir), total=len(os.listdir(results_dir))):
        if file.endswith(".json"):
            file_path = os.path.join(results_dir, file)
            data = load_input(file_path)
            all_results[file] = data
    return all_results


def get_all_traces(samples, data_path):

    traces,prolog_file_paths = get_prolog_traces(data_path, samples)
    print(f"Number of traces: {len(traces)}")

    raw_traces, parsed_traces, generated_traces = {}, {}, {}
    prolog_results = {}
    for index, trace_text in tqdm(traces.items(), total=len(traces)):
        prolog_file = [path for path in prolog_file_paths if f"prolog_code-{index}" in path][0]
        trace_lines = sanitize_trace(trace_text)

        if len(trace_lines) == 0:
            parsed_traces[index] = ""
            prolog_results[index] = ""
            raw_traces[index] = ""
            continue

        results, results_parsed = run_prolog(prolog_file)


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

        parsed_traces[index] = format_trace(parsed_traces[index].split("\n")) \
            if (len(parsed_traces[index].split()) < 4000 and len(parsed_traces[index].split()) > 10) else ""
        
        prolog_results[index] = results_parsed
    

    code_dir = os.path.dirname(prolog_file_paths[0])
    if os.path.exists(code_dir):
        shutil.rmtree(code_dir)
        print(f"Removed {code_dir}")

    return raw_traces, parsed_traces, prolog_results

def get_filtered_traces(code_traces, gen_traces):
    code_traces_full = []
    gen_traces_full = []
    for code_trace, gen_trace in zip(code_traces, gen_traces):
        if len(code_trace.strip()) > 0 and len(gen_trace.strip()) > 0:
            code_traces_full.append(code_trace)
            gen_traces_full.append(gen_trace)
    
    return code_traces_full, gen_traces_full

from copy import deepcopy
def old2new_trace_format(trace):
    trace_new = deepcopy(trace)
    if "Exit:" in trace:
        trace_new = trace_new.replace("Exit:", "Found:")
    if "Call:" in trace:
        trace_new = trace_new.replace("Call:", "Searching:")
    if  "Searching:" in trace and "Found:" in trace:
        trace_new = trace
    if  "Searching:" in trace and "Call:" in trace:
        trace_new = trace.replace("Searching:", "Found:")
        trace_new = trace.replace("Call:", "Searching:")
    
    return trace_new

def write_viz_diff(diff_html, output_path):
    with open(output_path, 'w') as f:
        f.write(diff_html)

def seq_matcher(code_traces, gen_traces, viz_freq=100, model_name=""):
    """ Compute the similarity between two sequences using SequenceMatcher. """
    scores = []
    results = {}
    index = 0
    for code_trace, gen_trace in zip(code_traces, gen_traces):
        if len(code_trace.strip()) == 0 or len(gen_trace.strip()) == 0:
            index += 1
            continue

        matcher = SequenceMatcher(None, code_trace, gen_trace)
        scores.append(matcher.ratio())
        index += 1

        if index % viz_freq == 0 and index > 0:
            diff_html = visualize_diff(code_trace, gen_trace)
            output_path_dir = "vizualizations"
            if model_name:
                output_path_dir = os.path.join(output_path_dir, model_name)
                output_path_dir = os.path.join(output_path_dir, "seq_matcher")
            if not os.path.exists(output_path_dir):
                os.makedirs(output_path_dir)
            output_path = f"viz_diff_{index}.html"
            output_path = os.path.join(output_path_dir, output_path)
            write_viz_diff(diff_html, output_path)

    results['avg_score'] = sum(scores) / len(scores) if scores else 0
    results['max_score'] = max(scores) if scores else 0
    results['min_score'] = min(scores) if scores else 0
    results['std_score'] = np.std(scores) if scores else 0

    return results


def diff(a, b):
    a = [x for x in a.splitlines() if x.strip()]
    b = [x for x in b.splitlines() if x.strip()]
    return list(unified_diff(a, b))

def visualize_diff(code_trace, gen_trace):
    d = HtmlDiff()
    diff = d.make_file(gen_trace.splitlines(), code_trace.splitlines())
    return diff

def compute_metric(code_traces, gen_traces, metric):
    print(len(code_traces), len(gen_traces))
    scores = metric.compute(predictions=gen_traces, references=code_traces)
    return scores


def jaccard_similarity(set1, set2):
    """ Calculate the Jaccard Similarity between two sets """
    intersection = set1.intersection(set2)
    union = set1.union(set2)
    return len(intersection) / len(union) if len(union) != 0 else 0

def longest_common_subsequence(X, Y):
    """ Compute the longest common subsequence (LCS) of two sequences """
    m = len(X)
    n = len(Y)
    L = [[0] * (n + 1) for _ in range(m + 1)]

    for i in range(m + 1):
        for j in range(n + 1):
            if i == 0 or j == 0:
                L[i][j] = 0
            elif X[i - 1] == Y[j - 1] or fuzz.ratio(X[i - 1], Y[j - 1]) > 90:
                # print(X[i - 1],"|||", Y[j - 1],"|||", fuzz.ratio(X[i - 1], Y[j - 1]))
                L[i][j] = L[i - 1][j - 1] + 1
            else:
                L[i][j] = max(L[i - 1][j], L[i][j - 1])

    return L[m][n]

def lcs_lists(gen_traces, code_traces):
    """ Compute the longest common subsequence (LCS) between two sets of traces """
    lcs_scores = []
    results = {}
    for gen_trace, code_trace in zip(gen_traces, code_traces):
        if len(gen_trace.strip()) == 0 or len(code_trace.strip()) == 0:
            continue

        gen_trace_listed = [x for x in code_trace.split("\n") if len(x.strip()) > 0]
        code_trace_listed = [x for x in gen_trace.split("\n") if len(x.strip()) > 0]
        lcs_scores.append(longest_common_subsequence(gen_trace_listed, code_trace_listed))

    results['avg_lcs'] = sum(lcs_scores) / len(lcs_scores) if lcs_scores else 0
    results['max_lcs'] = max(lcs_scores) if lcs_scores else 0
    results['min_lcs'] = min(lcs_scores) if lcs_scores else 0
    results['std_lcs'] = np.std(lcs_scores) if lcs_scores else 0

    return results

def parse_trace(trace: str)-> List[List[str]]:
    """ Parse the trace into structured paths. """
    # Split by Path
    paths = re.split(r'\[\w+\s\d+\]:', trace)
    paths = [path.strip() for path in paths if path.strip()] 
    structured_paths = [re.split(r'\n', path) for path in paths]
    return structured_paths

def compare_lines(path1, path2):
    """ Compare two paths and return the percentage of continuous matching lines. """
    min_len = min(len(path1), len(path2))
    match_count = 0
    for i in range(min_len):
        if fuzz.ratio(path1[i], path2[i]) > 80:
            match_count += 1
    if min_len == 0:
        return 0
    return (match_count / min_len) * 100
    # return SequenceMatcher(None, path1, path2).ratio() * 100


def extract_actions(path):
    """ Extracts the list of actions ('Searching', 'Found', 'Fail', 'Redo') from a path. """
    actions = []
    for line in path:
        action = re.findall(r'(Searching|Found|Fail|Redo)', line)
        if action:
            actions.append(action[0])
    return actions

def compare_structures(path1, path2):
    """ Compare the structures of two paths based on action sequences. """
    actions1 = extract_actions(path1)
    actions2 = extract_actions(path2)
    # Use SequenceMatcher to find the similarity ratio between action sequences
    return SequenceMatcher(None, actions1, actions2).ratio() * 100

def compare_traces(trace1, trace2):
    """ Compare two traces. """
    paths1 = parse_trace(trace1)
    paths2 = parse_trace(trace2)
    
    line_similarities = []
    structure_similarities = []
    
    # Compare each path in trace1 with each path in trace2
    for path1 in paths1:
        best_line_similarity = 0
        best_structure_similarity = 0
        for path2 in paths2:
            line_similarity = compare_lines(path1, path2)
            structure_similarity = compare_structures(path1, path2)
            if line_similarity > best_line_similarity:
                best_line_similarity = line_similarity
            if structure_similarity > best_structure_similarity:
                best_structure_similarity = structure_similarity
        line_similarities.append(best_line_similarity)
        structure_similarities.append(best_structure_similarity)
    
    overall_line_similarity = sum(line_similarities) / len(line_similarities) if paths1 else 0
    overall_structure_similarity = sum(structure_similarities) / len(structure_similarities) if paths1 else 0
    prefect_paths = [i for i in line_similarities if i >= 80]
    ratio_perfect_paths = len(prefect_paths) / len(line_similarities) if paths1 else 0
    
    return {
        'line_similarities': line_similarities,
        'structure_similarities': structure_similarities,
        'overall_line_similarity': overall_line_similarity,
        'overall_structure_similarity': overall_structure_similarity,
        'perfect_paths': prefect_paths, # Paths with 100% similarity
        'ratio_perfect_paths': ratio_perfect_paths,
    }


def compare_trace_lists(gen_traces, code_traces):
    """ Compare two sets of traces. """
    
    distances = []
    for gen_trace, code_trace in zip(gen_traces, code_traces):
        distances.append(compare_traces(gen_trace, code_trace))

    results = {}
    results['avg_line_similarity'] = sum([d['overall_line_similarity'] for d in distances]) / len(distances) if distances else 0
    results['avg_structure_similarity'] = sum([d['overall_structure_similarity'] for d in distances]) / len(distances) if distances else 0
    results['max_line_similarity'] = max([d['overall_line_similarity'] for d in distances]) if distances else 0
    results['max_structure_similarity'] = max([d['overall_structure_similarity'] for d in distances]) if distances else 0
    results['min_line_similarity'] = min([d['overall_line_similarity'] for d in distances]) if distances else 0
    results['min_structure_similarity'] = min([d['overall_structure_similarity'] for d in distances]) if distances else 0
    results['std_line_similarity'] = np.std([d['overall_line_similarity'] for d in distances]) if distances else 0
    results['std_structure_similarity'] = np.std([d['overall_structure_similarity'] for d in distances]) if distances else 0
    results['avg_ratio_perfect_paths'] = sum([d['ratio_perfect_paths'] for d in distances]) / len(distances) if distances else 0
    results['avg_perfect_paths'] = sum([len(d['perfect_paths']) for d in distances]) / len(distances) if distances else 0

    return results        


def levenshtein_distances(gen_traces, code_traces, viz_freq=100, model_name=""):
    """ Compute the Levenshtein distance between set of two traces. """
    levenshtein_distances = []
    line_error_rates_gen = []
    line_error_rates_code = []
    results = {}
    index = 0
    for gen_trace, code_trace in tqdm(zip(gen_traces, code_traces)):
        if len(gen_trace.strip()) == 0 or len(code_trace.strip()) == 0:
            index += 1
            continue

        gen_trace_listed = [x for x in code_trace.split("\n") if len(x.strip()) > 0]
        code_trace_listed = [x for x in gen_trace.split("\n") if len(x.strip()) > 0]

        ld, line_error_rate_gen, line_error_rate_code = line_error_rate(gen_trace_listed, code_trace_listed)
        line_error_rates_gen.append(line_error_rate_gen)
        line_error_rates_code.append(line_error_rate_code)
        levenshtein_distances.append(ld[-1][-1])

        if len(levenshtein_distances) % viz_freq == 0 and viz_freq > 0:
            ld = levenshtein_distance(gen_trace_listed, code_trace_listed)
            output_path_dir = "vizualizations"
            if model_name:
                output_path_dir = os.path.join(output_path_dir, model_name) 
                output_path_dir = os.path.join(output_path_dir, "levenshtein")
            if not os.path.exists(output_path_dir):
                os.makedirs(output_path_dir)
            output_path = f"viz_diff_{index}.pdf"
            output_path = os.path.join(output_path_dir, output_path)

            visualize_levensthein_heat(gen_trace_listed, code_trace_listed, ld, output_path)
                                       
        index += 1

    results['avg_error_rate_gen'] = sum(line_error_rates_gen) / len(line_error_rates_gen) if line_error_rates_gen else 0
    results['avg_error_rate_code'] = sum(line_error_rates_code) / len(line_error_rates_code) if line_error_rates_code else 0
    results['avg_distance'] = sum(levenshtein_distances) / len(levenshtein_distances) if levenshtein_distances else 0
    results['max_distance'] = max(levenshtein_distances) if levenshtein_distances else 0
    results['min_distance'] = min(levenshtein_distances) if levenshtein_distances else 0
    results['std_distance'] = np.std(levenshtein_distances) if levenshtein_distances else 0

    return results

def levenshtein_distance(hypothesis, reference):    
    ld = np.array([[0] * (len(reference) + 1) for _ in range(len(hypothesis) + 1)])
    for i in range(len(hypothesis) + 1):
        ld[i][0] = i
    for j in range(len(reference) + 1):
        ld[0][j] = j

    for i in range(1, len(hypothesis) + 1):
        for j in range(1, len(reference) + 1):
            if fuzz.ratio(hypothesis[i - 1], reference[j - 1]) > 90:
                substitution_cost = 0
            else:
                substitution_cost = 1
            ld[i][j] = min(ld[i - 1][j] + 1,ld[i][j - 1] + 1,
                    ld[i - 1][j - 1] + substitution_cost)

    return ld

def line_error_rate(hypothesis, reference):
    ld = levenshtein_distance(hypothesis, reference)
    return ld, ld[-1][-1] / len(reference), ld[-1][-1] / len(hypothesis)

def visualize_levensthein_heat(hypothesis, reference, ld, output_path):
    fig, ax = plt.subplots(figsize=(24, 16))
    ax.matshow(ld, cmap='Blues')
    ax.set_xticklabels([''] + list(reference), rotation=90)
    ax.set_yticklabels([''] + list(hypothesis))
    ax.xaxis.set_major_locator(ticker.MultipleLocator(1))
    ax.yaxis.set_major_locator(ticker.MultipleLocator(1))
    ax.set_xlabel('Reference')
    ax.set_ylabel('Hypothesis')
    plt.savefig(output_path)
    #close the plot
    plt.close()
    # plt.show()


def build_detailed_graph(trace):
    """Build a directed graph from a trace with detailed attributes."""
    G = nx.DiGraph()
    for i in range(len(trace)-1):
        # print(f"The trace is: {trace[i]} for i={i}")
        if "Path" in trace[i]:
            continue
        if len(trace[i].strip()) == 0 or "looking for " in trace[i].lower():
            continue
        
        if len(trace[i].split(': ')) < 2 or len(trace[i+1].split(': ')) < 2:
            continue

        call_type = trace[i].split(': ')[1]
        content = trace[i].split(': ')[2:]
        content = ': '.join(content)

        if call_type.strip() == "" or content.strip() == ": ":
            print(f"Skipping {trace[i]}")
            continue
        
        next_call_type = trace[i+1].split(': ')[1]
        next_content = trace[i+1].split(': ')[2:]
        next_content = ': '.join(next_content)

        if "looking for " in trace[i+1].lower():
            continue
        
        G.add_node(i, call_type=call_type, content=content)
        G.add_edge(i, i+1, transition=call_type + " to " + next_call_type)
        
    if len(trace[-1].strip()) > 0 and len(trace[-1].split(': ')) > 1:
        G.add_node(len(trace)-1, call_type=trace[-1].split(': ')[1], content=trace[-1].split(': ')[2:])

    return G


def compare_graphs(G1, G2):
    """Compare two graphs based on node and edge matching."""
    nm = lambda n1, n2: fuzz.ratio(n1.get('content', ''), n2.get('content', '')) > 90
    em = lambda e1, e2: fuzz.ratio(e1.get('transition', ''), e2.get('transition', '')) > 90

    # Use NetworkX's isomorphism functionality to find a match considering both nodes and edges
    matcher = nx.isomorphism.DiGraphMatcher(G1, G2, node_match=nm, edge_match=em)
    is_isomorphic = matcher.is_isomorphic()

    # If graphs are isomorphic, we can find an exact match
    if is_isomorphic:
        return {
            "is_isomorphic": True,
            "subgraph_isomorphisms_count": len(list(matcher.subgraph_isomorphisms_iter()))
        }
    else:
        # Calculate subgraph similarities if not isomorphic
        subgraph_matches = len(list(matcher.subgraph_isomorphisms_iter()))
        return {
            "is_isomorphic": False,
            "subgraph_isomorphisms_count": subgraph_matches
        }
    

def find_subgraph_isomorphisms(G1, G2):
    """Find all subgraph isomorphisms between two graphs."""
    nm = lambda n1, n2: fuzz.ratio(n1['content'], n2['content']) > 90
    em = lambda e1, e2: fuzz.ratio(e1['transition'], e2['transition']) > 90

    # Create a DiGraphMatcher object
    matcher = nx.algorithms.isomorphism.DiGraphMatcher(G2, G1, node_match=nm, edge_match=em)
    
    # List to hold all matching subgraphs
    subgraph_mappings = list(matcher.subgraph_isomorphisms_iter())

    return {
        "subgraph_count": len(subgraph_mappings),
        "subgraphs": subgraph_mappings
    }


def compare_graph_lists(gen_traces, code_traces):
    """ Compare two sets of traces based on graph isomorphism. """
    distance = []
    for gen_trace, code_trace in zip(gen_traces, code_traces):
        if len(gen_trace.strip()) == 0 or len(code_trace.strip()) == 0:
            continue

        gen_trace_listed = [x for x in code_trace.split("\n") if len(x.strip()) > 0]
        code_trace_listed = [x for x in gen_trace.split("\n") if len(x.strip()) > 0]

        gen_graph = build_detailed_graph(gen_trace_listed)
        code_graph = build_detailed_graph(code_trace_listed)
        distance.append(compare_graphs(gen_graph, code_graph))
    
    results = {}
    results['is_isomorphic'] = sum([d['is_isomorphic'] for d in distance]) / len(distance) if distance else 0
    results['subgraph_isomorphisms_count'] = sum([d['subgraph_isomorphisms_count'] for d in distance]) / len(distance) if distance else 0

    return results


import pickle
def save_traces(gen_traces, codes_traces,output_path):   
    #pickle the pair of traces
    with open(output_path, 'wb') as f:
        pickle.dump((gen_traces,codes_traces), f)

def load_traces(input_path):
    with open(input_path, 'rb') as f:
        gen_traces,codes_traces = pickle.load(f)
    return gen_traces,codes_traces



if __name__ == "__main__":

    parser = ArgumentParser("Trace Analysis")
    parser.add_argument("--data_path", type=str, help="Path to the data directory")
    parser.add_argument("--output_path", type=str, help="Path to the output directory")
    parser.add_argument("--mode", type=str, choices=["rouge", "bleu", "levenshtein", "graph", "lcs", "seq_matcher", "compare", "all"], help="Mode of analysis")
    parser.add_argument("--viz_freq", type=int, default=100, help="Frequency of visualization")

    args = parser.parse_args()

    data_name = os.path.dirname(args.data_path).split("/")[-1]

    print(f"Analyzing traces for {data_name}...")
    print("__"*50)

    if os.path.isdir(args.data_path):

        samples_per_file = load_all_results(args.data_path)

        for model_name, value in tqdm(samples_per_file.items(), total=len(samples_per_file)):
            print(f"Processing {model_name}...")

            output_path_dir = "traces/"
            if not os.path.exists(output_path_dir):
                os.makedirs(output_path_dir)
            output_path = f"traces_{data_name}_{model_name}.pkl"
            output_path = os.path.join(output_path_dir, output_path)

            if "model=command-r_execmode=trace_prompt=standard_icl=4_output.json" in output_path:
                print(f"Skipping {model_name} as it is a command model.")
                continue
            if os.path.exists(output_path):
                gen_traces, code_traces = load_traces(output_path)
                code_traces, gen_traces = get_filtered_traces(code_traces, gen_traces)
                print(f"Skipping {model_name} as traces already exist.")
                continue

            else:
                test_samples = value
                raw_traces, parsed_traces, prolog_results = get_all_traces(test_samples[1:], args.data_path)

                code_traces = []
                gen_traces = []

                for sample_meta_dict in test_samples[1:]:
                    index = sample_meta_dict['index']
                    code_traces.append(old2new_trace_format(parsed_traces[index]))
                    gen_traces.append(old2new_trace_format(sample_meta_dict['trace']))

                code_traces, gen_traces = get_filtered_traces(code_traces, gen_traces)

                output_path_dir = "traces/"
                if not os.path.exists(output_path_dir):
                    os.makedirs(output_path_dir)
                output_path = f"traces_{data_name}_{model_name}.pkl"
                output_path = os.path.join(output_path_dir, output_path)
                save_traces(gen_traces, code_traces, output_path)

            results = {}
            if len(gen_traces) == 0 or len(code_traces) == 0:
                print(f"Skipping {model_name} as no traces were found.")
                continue

            if args.mode == "bleu":
                metric = evaluate.load('bleu')
                results['bleu'] = compute_metric(code_traces, gen_traces, metric)
            if args.mode == "rouge":
                metric = evaluate.load('rouge')
                results['rouge'] = compute_metric(code_traces, gen_traces, metric)
            if args.mode == "seq_matcher":
                results['seq_matcher'] = seq_matcher(code_traces, gen_traces, args.viz_freq, f"{data_name}_{model_name}")
            if args.mode == "lcs":
                results['lcs'] = lcs_lists(gen_traces, code_traces)
            if args.mode == "levenshtein":
                results['levenshtein'] = levenshtein_distances(gen_traces, code_traces, args.viz_freq, f"{data_name}_{model_name}")
            if args.mode == "compare":
                results['compare'] = compare_traces(code_traces, gen_traces)
            if args.mode == "graph":
                results['graph'] = compare_graphs(gen_traces, code_traces)
            if args.mode == "all":
                print("Computing rouge...")
                results['rouge'] = compute_metric(code_traces, gen_traces, evaluate.load('rouge'))
                print("Computing seq_matcher...")
                results['seq_matcher'] = seq_matcher(code_traces, gen_traces, args.viz_freq, f"{data_name}_{model_name}")
                print("Computing lcs...")
                results['lcs'] = lcs_lists(gen_traces, code_traces)
                print("Computing levenshtein...")
                results['levenshtein'] = levenshtein_distances(gen_traces, code_traces, args.viz_freq, f"{data_name}_{model_name}")
                print("Computing compare...")
                results['compare'] = compare_trace_lists(code_traces, gen_traces)
                print("Computing graph...")
                results['graph'] = compare_graph_lists(gen_traces, code_traces)


            #save the results
            output_path = f"traces/"
            if not os.path.exists(output_path):
                os.makedirs(output_path)

            for key in results.keys():
                results[key] = {k: float(v) for k, v in results[key].items()}

            with open(os.path.join(output_path, f"results_{data_name}_{args.mode}_{model_name}.json"), 'w') as f:
                json.dump(results, f, indent=4)



    else:
        test_samples = load_input(args.data_path)
        ... 

# python llmsearch/trace_analysis.py --data_path samples/final_predictions/SQA/ --output_path traces/ --mode all --viz_freq 100



    





