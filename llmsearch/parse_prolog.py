import re
from llmsearch.run_prolog import run_prolog, replacement_per_dataset
import os
import argparse

class Node:
    def __init__(self, execution_type, level, predicate, args, result=None):
        self.execution_type = execution_type
        self.level = level
        self.predicate = predicate
        self.args = args
        self.result = result if result else {}
        self.children = []

    def add_child(self, child):
        self.children.append(child)
    def set_result(self, result):
        self.result = result

    #compare two nodes
    def __eq__(self, other):
        return self.execution_type == other.execution_type and self.level == other.level and self.predicate == other.predicate and self.args == other.args

class PrologTraceParser:

    def __init__(self, **kwargs):
        self.tree = kwargs.get('tree', None)
        self.min_level = kwargs.get('min_level', 0)
        self.replace_variable_map = kwargs.get('replace_variable_map', {})
        self.query_argument_meta_names = kwargs.get('search_meta_names', [])
        self.chains = []
        self.parsed_chains = []


    def _parse_result_arguments(self, line):
        #query(avgo,228.28) take the values between the brackets only
        chunk_regex = re.compile(r"\(([^)]+)\)")
        chunks = chunk_regex.findall(line)

        seperated_chunks = []
        for chunk in chunks:
            seperated_chunks += chunk.split(',')
        return seperated_chunks
    
    def _extract_arguments(self, func_call):
    # Match the function name and the arguments inside the parentheses
        match = re.match(r'\w+\((.*)\)$', func_call)
        if not match:
            return []  # or raise an Exception if you prefer

        # Extract the complete argument string from the match
        arguments = match.group(1)
        
        # This regex splits the arguments considering nested brackets
        args = []
        nested = 0
        last_split = 0
        for i, char in enumerate(arguments):
            if char == '(' or char == '[':
                nested += 1
            elif char == ')' or char == ']':
                nested -= 1
            elif char == ',' and nested == 0:
                args.append(arguments[last_split:i].strip())
                last_split = i + 1
        args.append(arguments[last_split:].strip())  # add the last argument

        return args
        
    def parse_line(self, line):

        if "^" in line:
            line = line.replace("^", "").strip()

        if ("path_result" in line or "true" in line.strip() or "false" in line.strip())\
            and ("Call" not in line and "Exit" not in line and "Redo" not in line and "Fail" not in line and "Comment" not in line):
            if "true" in line.strip() or "false" in line.strip():
                line = f"Result = true" if "true" in line.strip() else f"Result = false"
                return 'Result', None, None, None, {"Result": line.split("=")[1].strip()}
            elif "path_result" in line:
                #path_result:query(jpm,107.52)
                result = self._parse_result_arguments(line.split(":")[1])
                if len(result) == 0:
                    result = line.split(":")[1].strip()
                return 'Result', None, None, None, {"Result": result}
            else:
                parts = line.split(',') if ',' in line else [line]
                result = {}

                result = {part.split('=')[0].strip(): part.split('=')[1].strip() for part in parts if len(part.strip()) > 0}
                return 'Result', None, None, None, result  # Treat results differently
        else:
            parts = line.split()
            execution_type = parts[0].strip(':')
            level = parts[1].strip('()')
            if ',' in level:
                level = level.replace(',', '')


            predicate_parts = re.split(r'\(|\)', ' '.join(parts[2:]))
            predicate_name = re.split(r'\(|\)', ' '.join(parts[2:]))[0]
            args = self._extract_arguments(' '.join(parts[2:]))


            new_args = []
            for arg in args:
                arg = arg.strip()
                if not arg.startswith('_'):
                    new_args.append(arg)
                    continue
                if arg in self.replace_variable_map:
                    new_args.append(self.replace_variable_map[arg])
                else:
                    new_var = f"Candidate Variable_{len(self.replace_variable_map)}"
                    self.replace_variable_map[arg] = new_var
                    new_args.append(new_var)
            args = ', '.join(new_args)
            return execution_type, level, predicate_name, args, {}


    def build_tree(self, trace_lines):
        root = Node("Start of execution", 0, "Beginning Search", [])
        current_path = [root]
        
        for index, line in enumerate(trace_lines):

            execution_type, level, predicate_name, args, result = self.parse_line(line)
            if index == 0:
                self.min_level = level

            if execution_type == "Result":
                if current_path is not None:
                    current_path[-1].result.update(result)
                    # current_path[-1].set_result(result.update(current_path[-1].result))
            else:
                while current_path[-1].level >= level:
                    current_path.pop()
                new_node = Node(execution_type, level, predicate_name, args)
                current_path[-1].add_child(new_node)
                current_path.append(new_node)
        

        self.tree = root
        return root

    def build_tree_new(self, trace_lines):
        root = Node("Start of execution", 0, "Beginning Search", [])
        current_path = [root]
        completed_paths = []
        call_stack = {}
        
        # print("*" * 50)
        # print("\n".join(trace_lines))
        # print("*" * 50)
        for index, line in enumerate(trace_lines):
            execution_type, level, predicate_name, args, result = self.parse_line(line)

            if index == 0:  
                self.min_level = level

            if execution_type == "Call":
                new_node = Node(execution_type, level, predicate_name, args)
                current_path[-1].add_child(new_node)
                current_path.append(new_node)
                call_stack[level] = [new_node] if level not in call_stack else call_stack[level] + [new_node]

            elif execution_type == "Comment":
                new_node = Node(execution_type, level, predicate_name, args)
                current_path[-1].add_child(new_node)
                current_path.append(new_node)

            elif execution_type == "Exit":
                new_node = Node(execution_type, level, predicate_name, args)
                current_path[-1].add_child(new_node) ## add child to the last call node from the call stack?
                current_path.append(new_node)
                # call_stack[level].pop()
                
            elif execution_type == "Fail":
                new_node = Node(execution_type, level, predicate_name, args)
                new_node.result = {"Result": "Search Failed"}
                current_path[-1].add_child(new_node)
                current_path.append(new_node) 
                # current_path.pop()
                # call_stack[level].pop()
                
            elif execution_type == "Redo":

                # backtrack_node = call_stack[level][-1]
                # print(f"Backtracking to level {level} with predicate {backtrack_node.predicate} and args {backtrack_node.args}")
                # print("_" * 10)
                # printable_path = [node.predicate + ":" + str(node.level)+f":{node.args}"+ f":{node.execution_type}"  for node in current_path]
                # print("\n".join(printable_path))
                # print("_" * 10)
                # printable_path = [node.predicate + ":" + str(node.level)+f":{node.args}"+ f":{node.execution_type}"  for node in call_stack[level]]
                # print("\n".join(printable_path))


                # try:
                #     backtrack_node = call_stack[level][-1]
                #     current_path = current_path[:current_path.index(backtrack_node)]
                # except:
                #     raise Exception(f"Error backtracking to level {level} with predicate {predicate_name} and args {args}")

                # print(f"Able to backtrack to level {level} with predicate {predicate_name} and args {args}")
                # print("_" * 50)

                # new_node = Node(execution_type, level, predicate_name, args)
                # current_path[-1].add_child(new_node)
                # current_path.append(new_node)
                # call_stack[level] = call_stack[level] + [new_node]

                backtrack_node = Node(execution_type, level, predicate_name, args)
                # current_path[-1].add_child(backtrack_node)

                call_stack[level] = call_stack[level] + [backtrack_node]

                for level in call_stack:
                    if level >= backtrack_node.level:
                        call_stack[level] = []


                current_path = current_path[:self.find_node_index_list(backtrack_node, current_path)]
                current_path[-1].add_child(backtrack_node)

                # current_path[-1].add_child(backtrack_node)

            elif execution_type == "Result":
                if current_path is not None:
                    current_path[-1].result.update(result)
                    # current_path[-1].set_result(result.update(current_path[-1].result))

            # print("_" * 50)

        self.tree = root
        return root
    
    def find_node_index_list(self, node, node_list):
        for index, n in enumerate(node_list):
            if n.__eq__(node):
                return index
        return None

    
    def save_chains(self, node=None, chain=None):
        result_str = f" -> {node.result}" if node.result else ""

        if node is None:
            node = self.tree
            chain = []
        chain.append(node)
        if len(node.children) == 0:
            self.chains.append(chain)
        else:
            for child in node.children:
                self.save_chains(child, chain.copy())


    def parse_chains(self, verbose=False):
        print(f"Number of chains: {len(self.chains)}")

        for chain in self.chains:
            search_chain = []
            for node in chain:
                if len(node.args) > 0:
                    args = f"({node.args.strip()})"
                else:
                    args = ""
                if len(node.predicate) > 0:
                    predicate = f" {node.predicate}"
                else:
                    predicate = ""
                
                if "call" in node.execution_type.lower():
                    node.execution_type.replace("call", "Searching")
                if "exit" in node.execution_type.lower():
                    node.execution_type = node.execution_type.replace("exit", "Found")
                if len(node.result) > 0:
                    result = f" | {node.result}"
                else:
                    result = ""
                search_chain.append(f"{node.execution_type}:{predicate}{args}{result}")
                
            if verbose:
                print(" -> ".join(search_chain))
            self.parsed_chains.append(" -> ".join(search_chain))


    def print_tree(self, node, indent=0):
        result_str = f" -> {node.result}" if node.result else ""
        print('---------' * indent + f'{node.execution_type}: ({max(0, node.level - self.min_level)}) {node.predicate} ({node.args}){result_str}')
        for child in node.children:
            self.print_tree(child, indent + 1)


def sanitize_trace(trace_text):
    trace_lines = trace_text.strip().split('\n')

    trace_lines_sanitized = []
    level_memory = ""
    for index, trace_line in enumerate(trace_lines):
        if "^" in trace_line:
            trace_line = trace_line.replace("^", "").strip()

        modified_line = trace_line.strip()

        if len(trace_line.strip()) == 0 or trace_line =="" or trace_line == "\n":
            continue
        if "Timeout" in trace_line:
            return []
        if "Code execution failed" in trace_line:
            return []
        if "Exception" in trace_line:
            return []
        if "protocol" in trace_line:
            continue
        if "forall" in trace_line:
            continue
        if "write(" in trace_line or "print(" in trace_line or "writeln(" in trace_line or "writef(" in trace_line or "printf(" in trace_line:
            continue
        if "format(" in trace_line:
            continue
        if "ERROR" in trace_line:
            continue
        if "halt" in trace_line:
            continue

        if 'exit:' not in trace_line.lower() and 'redo:' not in trace_line.lower() \
                and 'fail:' not in trace_line.lower() and 'call:' not in trace_line.lower() and 'path_result' not in trace_line.lower():
            if len(trace_lines_sanitized) > 0:
                level_memory = trace_lines_sanitized[-1].strip().split()[1].strip('()')
                modified_line = f"Comment: ({level_memory}) {trace_line}"
            else:
                modified_line = f"Comment: (0) {trace_line}"

        trace_lines_sanitized.append(modified_line)

    return [line.strip() for line in trace_lines_sanitized if len(line.strip()) > 0]

def replace_results(trace_lines, results, dataset_name="SQA"):
    try:
        predicted_results = []
        for index, line in enumerate(trace_lines):
            if "path_result" in line.strip():
                predicted_results.append(line)   

        print(f"Prolog trace results: {predicted_results}")
        print(f"Prolog run results: {results}")
        print("___"*20)

        if len(predicted_results) != len(results):
            raise Exception("Results length mismatch")

        answer_counter = 0
        results = [replacement_per_dataset(dataset_name, result) for result in results]
        # print(results)

        for index, line in enumerate(trace_lines):
            if "path_result" in line.strip():
                
                replacement_string = ""
                if type(results[answer_counter]) == str:
                    replacement_string = results[answer_counter]
                else:
                    for key, val in results[answer_counter].items():
                        replacement_string += f"{key} = {val}, "
                    replacement_string = f"{replacement_string.strip()[:-1]}"

                trace_lines[index] = f"path_result:{replacement_string}"
                answer_counter += 1
                
    except Exception as e:
        print(f"Error replacing results: {e}")
        return trace_lines

    return trace_lines


def parse_trace(trace):
    # Each trace is split by ' -> ' to get individual steps
    steps = trace.split(' -> ')
    return steps

def find_common_prefix(traces):
    # Assume the shortest trace is the common prefix limit
    min_length = min(len(trace) for trace in traces)
    common_prefix = []
    for i in range(min_length):
        # Check if the current step is the same across all traces
        step_set = set(trace[i] for trace in traces)
        if len(step_set) == 1:
            common_prefix.append(traces[0][i])
        else:
            break
    return common_prefix

def format_trace_old(traces):
    parsed_traces = [parse_trace(trace) for trace in traces.split('\n')]
    common_prefix = find_common_prefix(parsed_traces)
    common_prefix_len = len(common_prefix)

    # Print the common prefix
    formatted_output = ' -> '.join(common_prefix) + '\n'
    
    # Handle divergences
    divergences = {}
    for idx, trace in enumerate(parsed_traces):
        key = tuple(trace[common_prefix_len:])
        if key not in divergences:
            divergences[key] = []
        divergences[key].append(idx + 1)
    
    # Print each unique divergence path with its occurrence indices
    for i, (key, indices) in enumerate(divergences.items(), start=1):
        formatted_output += f"  Branch {i} (Cases: {', '.join(map(str, indices))}):\n" if len(divergences) > 1 else ""
        formatted_output += '    ' + ' -> '.join(key) + '\n'
    
    return formatted_output

def format_trace(traces):
    # Split each trace into components
    trace_list = [trace.split(" -> ") for trace in traces]

    # Prepare the structure to hold the simplified trace
    simplified_traces = []

    # Loop through each trace
    for idx, trace in enumerate(trace_list):
        if idx == 0:
            # For the first trace, add all elements directly
            simplified_traces.append(list(enumerate(trace)))
        else:
            # Find the common prefix with the previous trace
            common_length = 0
            for i in range(min(len(trace), len(trace_list[idx-1]))):
                if trace[i] == trace_list[idx-1][i]:
                    common_length += 1
                else:
                    break
            
            # Add only the differing part of the trace with indexes
            simplified_traces.append(list(enumerate(trace[common_length:], start=common_length)))

    # To print the traces
    formated_traces = []
    for i, trace in enumerate(simplified_traces):
        formated_traces.append(f"[Path {i+1}]:")
        # print(f"Trace {i+1}:")
        for idx, part in trace:
            # print(f" {idx}: {part}")
            if "Redo" in part:
                formated_traces.append(f"\nLooking for other paths: {part}")
                continue
            formated_traces.append(f" {idx}: {part}")

        if formated_traces[-1] != "\n":
            formated_traces.append("\n")
        # print()
    
    return "\n".join(formated_traces)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Parse Prolog trace')
    parser.add_argument('--trace_file', type=str, help='Path to the file with prolog trace')
    parser.add_argument('--prolog_file', type=str, help='Path to the file with prolog code')

    args = parser.parse_args()

    # Example usage:
    with open(f"{args.trace_file}", 'r') as f:
        trace_text = f.read()

    trace_lines = sanitize_trace(trace_text)
    # trace_lines = trace_text.strip().split('\n')

    results = run_prolog(args.prolog_file)
    replace_results(trace_lines, results)

    parser = PrologTraceParser()
    tree_root = parser.build_tree_new(trace_lines)
    # parser.print_tree(tree_root)
    chains = parser.save_chains(node=tree_root, chain=[])
    parser.parse_chains(verbose=True)