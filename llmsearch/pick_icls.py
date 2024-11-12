import os
import re
import json
import shutil
import argparse
import numpy as np
import matplotlib.pyplot as plt
from typing import List, Tuple
from llmsearch.data_utils import load_data


#import sampling  stratified
import json
import random
from typing import List, Dict

def stratified_sampling(correct_samples: List[Dict], num_samples: int) -> List[Dict]:
    # Group the correct samples by their answer
    grouped_samples = {}
    for sample in correct_samples:
        answer = sample["answer"]
        if answer not in grouped_samples:
            grouped_samples[answer] = []
        grouped_samples[answer].append(sample)
    
    # Calculate the number of samples to take from each group
    num_samples_per_group = num_samples // len(grouped_samples)
    
    # Sample from each group
    sampled_samples = []
    for samples in grouped_samples.values():
        sampled_samples.extend(random.sample(samples, min(num_samples_per_group, len(samples))))
    
    return sampled_samples

def get_multikey_prolg_answers(answers: List[Dict]) -> List[str]:
    """
    Get the prolog answers for multiple keys
    """
    prolog_answers = []
    for answer in answers:
        for key in answer:
            if key != "truth":
                prolog_answers.append(answer[key])
    
    return prolog_answers


def pick_icls(icl_path, num_samples=10):
    with open(icl_path, 'r') as f:
        icls = json.load(f)
    
    count_correct = {}
    count_overall = {}

    correct_samples = []
    for icl in icls:
        if "SQA" in icl_path:
            if icl["answer"] == icl["prolog_results"] and icl["parsed_trace"].strip() != "":
                count_correct[icl["answer"]] = count_correct.get(icl["answer"], 0) + 1
                correct_samples.append(icl)

            count_overall[icl["answer"]] = count_overall.get(icl["answer"], 0) + 1

        elif "clutrr" in icl_path:
            count_correct[icl["answer"]] = count_correct.get(icl["answer"], 0) + 1
            correct_samples.append(icl)

            count_overall[icl["answer"]] = count_overall.get(icl["answer"], 0) + 1

        elif "gsm8k" in icl_path:
            if float(icl["answer"]) in [float(x) for x in get_multikey_prolg_answers(icl["prolog_results"])] \
            and icl["prolog_results"] != "Code execution failed" and icl["parsed_trace"].strip() != "":
                count_correct[icl["answer"]] = count_correct.get(icl["answer"], 0) + 1
                correct_samples.append(icl)

            count_overall[icl["answer"]] = count_overall.get(icl["answer"], 0) + 1
        
        elif "MultiArith" in icl_path:
            if float(icl["answer"]) in [float(x) for x in get_multikey_prolg_answers(icl["prolog_results"])] \
            and icl["prolog_results"] != "Code execution failed" and icl["parsed_trace"].strip() != "":
                count_correct[icl["answer"]] = count_correct.get(icl["answer"], 0) + 1
                correct_samples.append(icl)

            count_overall[icl["answer"]] = count_overall.get(icl["answer"], 0) + 1
        
        elif "ASDiv" in icl_path:
            if float(icl["answer"]) in [float(x) for x in get_multikey_prolg_answers(icl["prolog_results"])] \
            and icl["prolog_results"] != "Code execution failed" and icl["parsed_trace"].strip() != "":
                count_correct[icl["answer"]] = count_correct.get(icl["answer"], 0) + 1
                correct_samples.append(icl)

            count_overall[icl["answer"]] = count_overall.get(icl["answer"], 0) + 1
        
        elif "svamp" in icl_path:
            if float(icl["answer"]) in [float(x) for x in get_multikey_prolg_answers(icl["prolog_results"])] \
            and icl["prolog_results"] != "Code execution failed" and icl["parsed_trace"].strip() != "":
                count_correct[icl["answer"]] = count_correct.get(icl["answer"], 0) + 1
                correct_samples.append(icl)

            count_overall[icl["answer"]] = count_overall.get(icl["answer"], 0) + 1
        
        elif "aqua" in icl_path:
            count_correct[icl["answer"]] = count_correct.get(icl["answer"], 0) + 1
            correct_samples.append(icl)
            count_overall[icl["answer"]] = count_overall.get(icl["answer"], 0) + 1

        elif "sports" in icl_path or "date" in icl_path:
            count_correct[icl["answer"]] = count_correct.get(icl["answer"], 0) + 1
            correct_samples.append(icl)
            count_overall[icl["answer"]] = count_overall.get(icl["answer"], 0) + 1


    if "SQA" in icl_path:
        print(f"In context samples statistics:")
        print(f"Average accuracy Yes: {count_correct['yes'] / count_overall['yes']}")
        print(f"Average accuracy No: {count_correct['no'] / count_overall['no']}")
        print("__"*20)
    elif "gsm8k" in icl_path:
        print(f"In context samples statistics:")
        print(f"Average accuracy: {sum(count_correct.values()) / sum(count_overall.values())}")
        print("__"*20)

    if "SQA" in icl_path:
        correct_samples = stratified_sampling(correct_samples, num_samples)
    else:
        correct_samples = random.sample(correct_samples, num_samples)

    print(f"Number of correct chosen samples: {len(correct_samples)}")

    return correct_samples


def pick_icl_candidates(data_dir: str, dataset: str, data_mode: str,output_dir: str, num_samples: int = 10):
    data_dir = os.path.join(data_dir, dataset)

    samples, question_key = load_data(dataset, data_dir, data_mode)

    
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    lengths = length_distribution(samples)
    length_buckets = devide_into_length_buckets(samples, lengths, num_buckets=3)
    try:
        samples = sample_from_buckets(length_buckets, num_samples=num_samples)
    except:
        print("Error in bucketing, trying random sampling")
        length_buckets = devide_into_length_buckets(samples, lengths, num_buckets=1)
        samples = sample_from_buckets(length_buckets, num_samples=num_samples)

    print(f"Number of samples: {len(samples)}")

    assert num_samples == len(samples)

    save_samples(samples, output_dir)



def length_distribution(samples: List[dict]):
    lengths = [len(sample["question"].split()) for sample in samples]
    print(f"Mean: {np.mean(lengths)}")
    print(f"Median: {np.median(lengths)}")
    print(f"Max: {np.max(lengths)}")
    print(f"Min: {np.min(lengths)}")
    print(f"Std: {np.std(lengths)}")

    #make a distribution plot
    plt.hist(lengths, bins=20)
    plt.xlabel('Length of question')
    plt.ylabel('Number of questions')
    plt.title('Length distribution of questions')
    plt.show()

    return lengths


def devide_into_length_buckets(samples: List[dict], lengths: List[int], num_buckets: int = 20):
    length_buckets = {}
    for i in range(num_buckets):
        length_buckets[i] = []
    
    bucket_thresholds = np.linspace(0, np.max(lengths), num_buckets + 1)
    for length, sample in zip(lengths, samples):
        bucket = 0
        for i in range(num_buckets):
            if length >= bucket_thresholds[i] and length < bucket_thresholds[i + 1]:
                bucket = i
                break

        length_buckets[bucket].append((sample["index"], sample))

    return length_buckets

def sample_from_buckets(length_buckets: dict, num_samples: int):
    samples = []
    per_bucket_samples = [num_samples // len(length_buckets)] * len(length_buckets)

    #add the remaining samples to the first buckets
    remaining_samples = num_samples - sum(per_bucket_samples)
    per_bucket_samples[0] += remaining_samples

    print(f"Samples per bucket: {per_bucket_samples}")

    for index, bucket in enumerate(length_buckets):
        bucket_samples = length_buckets[bucket]
        np.random.shuffle(bucket_samples)

        if len(bucket_samples) < per_bucket_samples[index]:
            samples += bucket_samples
            diff = per_bucket_samples[index] - len(bucket_samples)
            per_bucket_samples[index+1] += diff #this is unsafe, but we are assuming that the next bucket has enough samples
        else:
            samples += bucket_samples[:per_bucket_samples[index]]

    #samples = [(index, sample) for index, sample in samples]

    print(f"Number of samples: {len(samples)}")

    return samples

def save_samples(samples: List[dict], output_dir: str):

    picked_indices = [sample[0] for sample in samples]
    picked_samples = [sample[1] for sample in samples]

    picked_indices = np.array(picked_indices)
    np.save(os.path.join(output_dir, "picked_indices.npy"), picked_indices)

    with open(os.path.join(output_dir, "picked_samples.json"), "w") as f:
        json.dump(picked_samples, f, indent=4)



if __name__ == '__main__':

    parser = argparse.ArgumentParser(description='Pick in context learning samples')
    parser.add_argument('--data_dir', type=str, help='Path to the data directory')
    parser.add_argument('--data_mode', type=str, help='Mode of the data to pick samples from')
    parser.add_argument('--dataset', type=str, help='Dataset to pick samples from')
    parser.add_argument('--output_dir', type=str, help='Path to the output directory')
    parser.add_argument('--num_samples', type=int, help='Number of samples to pick', default=64)
    parser.add_argument('--mode', type=str, help='Mode of operation', default='candidate')

    args = parser.parse_args()

    args.output_dir = os.path.join(args.output_dir, args.dataset)


    if args.mode == "candidate":
        pick_icl_candidates(args.data_dir, args.dataset, args.data_mode,args.output_dir)
    else:
        pick_icls("samples/plans_code_traces/SQA/gpt-3.5-turbo_output.json")


# example usage:
# python pick_icls.py --data_dir data --dataset SQA --output_dir samples_inital