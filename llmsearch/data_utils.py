# credit to https://github.com/swarnaHub/ExplanationIntervention/blob/main/src/data_utils.py
import os
import re
import json
import random
import pickle
import pandas



def load_data(dataset, data_dir, data_mode):
    if os.path.isfile(data_dir):
        data_dir = os.path.dirname(data_dir)
        print(f"Data directory: {data_dir}")

    if dataset == "SQA":
        data = StrategyQA(data_dir)
    elif dataset == "gsm8k":
        data = GSM8k(data_dir)
    elif dataset == "MultiArith":
        data = MultiArith(data_dir)
    elif dataset == "ASDiv":
        data = ASDiv(data_dir)
    elif dataset == "aqua":
        data = Aqua(data_dir)
    elif dataset == "clutrr":
        data = CLUTRR(data_dir)
    elif dataset == "svamp":
        data = SVAMP(data_dir)
    elif dataset == "date":
        data = Date(data_dir)
    elif dataset == "sports":
        data = Sports(data_dir)
    else:
        raise ValueError("Invalid dataset")
    
    if data_mode == "train":
        samples = data.get_train_samples()
    elif data_mode == "dev":
        samples = data.get_dev_samples()
    elif data_mode == "test":
        samples = data.get_test_samples()

    question_key = data.question_key

    return samples, question_key


class AbstractDataset:
    def __init__(self, data_dir):
        self.data_dir = data_dir

    def get_samples(self, data_mode):
        raise NotImplementedError

    def get_train_samples(self):
        return self.get_samples(self.train_path)

    def get_dev_samples(self):
        return self.get_samples(self.dev_path)

    def get_test_samples(self):
        return self.get_samples(self.test_path)


class StrategyQA(AbstractDataset):
    def __init__(self, data_dir):
        self.train_path = os.path.join(data_dir, "train.jsonl")
        self.dev_path = os.path.join(data_dir, "dev.jsonl")
        self.test_path = os.path.join(data_dir, "test.jsonl")
        self.question_key = "question"

    def get_samples(self, file_path):
        samples = []
        print(file_path)
        with open(file_path, "r", encoding="utf-8-sig") as f:
            json_lines = f.readlines()
            for i, json_line in enumerate(json_lines):
                json_input = json.loads(json_line)
                samples.append({
                    "index": i,
                    "qid": json_input["id"],
                    "question": json_input["question"],
                    "answer": 'yes' if json_input["answer"] else 'no',
                })
                #add the rest of the fields
                for key, value in json_input.items():
                    if key not in samples[-1]:
                        samples[-1][key] = value

        print(f"Loaded {len(samples)} samples from {file_path}")

        return samples
    

class Date(AbstractDataset):
    def __init__(self, data_dir):
        self.train_path = os.path.join(data_dir, "train.jsonl")
        self.dev_path = os.path.join(data_dir, "dev.jsonl")
        self.test_path = os.path.join(data_dir, "test.jsonl")
        self.question_key = "question"

    def get_samples(self, file_path):
        samples = []
        count = 0
        with open(file_path, "r") as f:
            jsonlines = f.read().splitlines()
            for i, jsonline in enumerate(jsonlines):
                sample = json.loads(jsonline)
                answer = sample["answer"].split("#### ")[-1].strip()
                sample_json = {
                    "index": i,
                    "question": sample["question"],
                    "answer": answer,
                }
                samples.append(sample_json)

        print(f"Loaded {len(samples)} samples from {file_path}")

        return samples
    
class Sports(AbstractDataset):
    def __init__(self, data_dir):
        self.train_path = os.path.join(data_dir, "train.jsonl")
        self.dev_path = os.path.join(data_dir, "dev.jsonl")
        self.test_path = os.path.join(data_dir, "test.jsonl")
        self.question_key = "question"

    def get_samples(self, file_path):
        samples = []
        count = 0
        with open(file_path, "r") as f:
            jsonlines = f.read().splitlines()
            for i, jsonline in enumerate(jsonlines):
                sample = json.loads(jsonline)
                answer = sample["answer"]
                sample_json = {
                    "index": i,
                    "question": sample["question"],
                    "answer": answer,
                }
                samples.append(sample_json)

        print(f"Loaded {len(samples)} samples from {file_path}")

        return samples


class CLUTRR(AbstractDataset):
    def __init__(self, data_dir):
        self.train_path = os.path.join(data_dir, "train.jsonl")
        self.dev_path = os.path.join(data_dir, "dev.jsonl")
        self.test_path = os.path.join(data_dir, "test.jsonl")
        self.question_key = "question"
    
    def get_samples(self, file_path):
        samples = []
        with open(file_path, "r") as f:
            jsonlines = f.read().splitlines()
            for i, jsonline in enumerate(jsonlines):
                sample = json.loads(jsonline)
                samples.append({
                    "index": i,
                    "question": sample["question"],
                    "answer": sample["answer"],
                })

        print(f"Loaded {len(samples)} samples from {file_path}")

        return samples


class GSM8k(AbstractDataset):
    def __init__(self, data_dir):
        self.train_path = os.path.join(data_dir, "train.jsonl")
        self.dev_path = os.path.join(data_dir, "dev.jsonl")
        self.test_path = os.path.join(data_dir, "test.jsonl")
        self.question_key = "question"


    def get_samples(self, file_path):
        samples = []
        count = 0
        with open(file_path, "r") as f:
            jsonlines = f.read().splitlines()
            for i, jsonline in enumerate(jsonlines):
                sample = json.loads(jsonline)
                answer = re.sub(r"[^0-9.]", "",sample["answer"].split("#### ")[1].strip())
                gold_explanation = re.sub('<<.*>>', '', sample["answer"].split("#### ")[0].replace("\n\n", "\n").strip())
                gold_explanation_sents = gold_explanation.split("\n")
                gold_explanation_sents = [gold_explanation_sent + "." if gold_explanation_sent[-1] != "." else gold_explanation_sent for gold_explanation_sent in gold_explanation_sents]
                gold_explanation = " ".join(gold_explanation_sents)
                sample_json = {
                    "index": i,
                    "question": sample["question"],
                    "answer": answer,
                    "gold_explanation": gold_explanation
                }
                samples.append(sample_json)

        print(f"Loaded {len(samples)} samples from {file_path}")

        return samples
    
class MultiArith(AbstractDataset):
    def __init__(self, data_dir):
        self.train_path = os.path.join(data_dir, "train.jsonl")
        self.dev_path = os.path.join(data_dir, "dev.jsonl")
        self.test_path = os.path.join(data_dir, "test.jsonl")
        self.question_key = "question"

    def get_samples(self, file_path):
        samples = []
        count = 0
        with open(file_path, "r") as f:
            jsonlines = f.read().splitlines()
            for i, jsonline in enumerate(jsonlines):
                sample = json.loads(jsonline)
                answer = re.sub(r"[^0-9.]", "",sample["answer"].split("#### ")[-1].strip())
                sample_json = {
                    "index": i,
                    "question": sample["question"],
                    "answer": answer,
                }
                samples.append(sample_json)

        print(f"Loaded {len(samples)} samples from {file_path}")

        return samples

class ASDiv(AbstractDataset):
    def __init__(self, data_dir):
        self.train_path = os.path.join(data_dir, "train.jsonl")
        self.dev_path = os.path.join(data_dir, "dev.jsonl")
        self.test_path = os.path.join(data_dir, "test.jsonl")
        self.question_key = "question"

    def get_samples(self, file_path):
        samples = []
        count = 0
        with open(file_path, "r") as f:
            jsonlines = f.read().splitlines()
            for i, jsonline in enumerate(jsonlines):
                sample = json.loads(jsonline)
                if "####" in sample["answer"]:
                    answer = re.sub(r"[^0-9.]", "",sample["answer"].split("#### ")[-1].strip())
                else:
                    answer = sample["answer"]
                sample_json = {
                    "index": i,
                    "question": sample["question"],
                    "answer": answer,
                }
                samples.append(sample_json)

        print(f"Loaded {len(samples)} samples from {file_path}")

        return samples



class SVAMP(AbstractDataset):
    def __init__(self, data_dir):
        self.train_path = os.path.join(data_dir, "train.jsonl")
        self.dev_path = os.path.join(data_dir, "dev.jsonl")
        self.test_path = os.path.join(data_dir, "test.jsonl")
        self.question_key = "question"

    def get_samples(self, file_path):
        samples = []
        count = 0
        with open(file_path, "r") as f:
            jsonlines = f.read().splitlines()
            for i, jsonline in enumerate(jsonlines):
                sample = json.loads(jsonline)
                answer = re.sub(r"[^0-9.]", "",sample["answer"].split("#### ")[-1].strip())
                sample_json = {
                    "index": i,
                    "question": sample["question"],
                    "answer": answer,
                }
                samples.append(sample_json)

        print(f"Loaded {len(samples)} samples from {file_path}")

        return samples

    
class Aqua(AbstractDataset):
    def __init__(self, data_dir):
        self.train_path = os.path.join(data_dir, "train.jsonl")
        self.dev_path = os.path.join(data_dir, "dev.jsonl")
        self.test_path = os.path.join(data_dir, "test.jsonl")
        self.question_key = "question"

    def get_samples(self, file_path):
        samples = []
        data = [json.loads(line) for line in open(file_path, 'r')]
        for i, json_input in enumerate(data):
            samples.append({
                "index": i,
                "question": json_input["question"],
                "options": json_input["options"],
                "answer": json_input["answer"],
            })

        
        print(f"Loaded {len(samples)} samples from {file_path}")

        return samples

        
class ECQA(AbstractDataset):
    def __init__(self, data_dir):
        self.test_path = os.path.join(data_dir, "cqa_data_test.csv")
        self.question_key = "question"

    def get_samples(self, file_path):
        samples = []
        df = pandas.read_csv(file_path)
        for index, row in df.iterrows():
            options = [row["q_op1"], row["q_op2"], row["q_op3"], row["q_op4"], row["q_op5"]]
            samples.append({
                "index": index,
                "question": row["q_text"],
                "options": options,
                "answer": str(options.index(row["q_ans"]) + 1),
                "gold_explanation": row["taskB"]
            })

        return samples

    