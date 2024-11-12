import os
import re
import json
import tempfile
from typing import List, Dict, Any, Tuple


def create_temp_file(text: str, dataset_name: str = "SQA") -> str:
    """
    Create a temporary file from a text
    """
    with tempfile.NamedTemporaryFile(mode='w', delete=False, \
                                     prefix =f"{dataset_name}_", suffix=".pl") as temp_file:
        
        file_name = temp_file.name
        temp_file.write(text)
        print(f"Created temporary file: {file_name}")
        file_path = os.path.join(tempfile.gettempdir(), file_name)
    return file_name, file_path


def extract_code_from_text(text: str) -> Tuple[str, str]:
    # print(text)
    codes = re.findall(r"```(.*?)```", text, re.DOTALL)
    if codes:
        #take the last code block
        code_last = codes[-1]

        #if a longer code block is present, take it
        for code in codes:
            if len(code) > len(code_last):
                print("picked a longer code block")
                code_last = code
        
        code = code_last

        if code.strip().startswith("prolog"):
            code = code.replace("prolog", "").strip()
    else:
        code = text

    return code.strip()

##TODO test
def extract_last_answer(text):
    # Pattern to find the content after "######\nHere is the answer:"
    # We use a positive lookbehind assertion to find the exact line
    # and then capture everything following until the end or a new section starts.

    if text.strip().lower() == "yes" or text.strip().lower() == "no":
        return text.strip()

    pattern = r"(?<=######\nHere is the answer:)(.*?)(?=\n######|$)"

    # Find all matches in the text; `re.DOTALL` allows the dot to match newlines
    matches = re.findall(pattern, text, re.DOTALL)

    # Return the last match, if any
    if matches:
        return matches[-1].strip()  # Strip to remove leading/trailing whitespace
    else:
        return "No answer found."

def add_prompt_to_texts(texts: List[str], prompt: str, strategy: str = 'append') -> List[str]:
    """
    Add a prompt to a list of texts
    """
    if strategy == "replace":
        return [f"{prompt} {text}" for text in texts]
    elif strategy == "prepend":
        return [f"{prompt}\n{text}" for text in texts]
    elif strategy == "append":
        return [f"{text}\n{prompt}" for text in texts]
    elif strategy == "none":
        return texts
    
    else:
        raise ValueError("Invalid strategy. Must be one of 'replace', 'prepend', or 'append'.")
    

def remove_prompt_from_text(text: str, prompt: str) -> str:
    """
    Remove a prompt from a text
    """
    return text.replace(prompt, "").strip()

def remove_prompt_from_texts(texts: List[str], prompt: str) -> List[str]:
    """
    Remove a prompt from a list of texts
    """
    return [remove_prompt_from_text(text, prompt) for text in texts]

def prompt_like_openai_message(prompt: str, texts: List[str]) -> List[str]:
    """
    Add a prompt to a list of texts in the same way as OpenAI's message API
    """
    messeges = []
    messeges.append({"role": "system", "content": prompt})
    for text in texts:
        messeges.append({"role": "user", "content": text})

    return messeges

def add_to_message_history(messages: List[Dict[str, Any]], prompt: str, texts: List[str]) -> List[Dict[str, Any]]:
    """
    Add a prompt to a list of texts in the same way as OpenAI's message API
    """
    new_messages = []
    new_messages.append({"role": "system", "content": prompt})
    for text in texts:
        new_messages.append({"role": "user", "content": text})

    return messages + new_messages

if __name__ == "__main__":

    #TODO: add unit tests later

    texts = ["I like to eat", "I like to sleep"]
    prompt = "I like to"
    strategy = "append"
    print(add_prompt_to_texts(texts, prompt, strategy))
    print(remove_prompt_from_text("I like to eat", prompt))
    print(remove_prompt_from_texts(texts, prompt))
