import os
import re
import json
import yaml
import torch
from openai import OpenAI
import cohere
from together import Together 

from torch import nn, Tensor
from abc import abstractmethod
from torch.nn import functional as F
from typing import List, Dict, Any, Tuple
from transformers import AutoModel, AutoTokenizer

import logging

logger = logging.getLogger(__name__)

def get_kwargs_from_config(config_path: str) -> Dict[str, Any]:
    with open(config_path, 'r') as file:
        kwargs = yaml.safe_load(file)
    return kwargs

#base class for all models that are going to be used for inference
class BaseModel:
    def __init__(self) -> None:
        super().__init__()

    @abstractmethod
    def __call__(self, input_list: List[Dict]) -> List[Dict]:
        raise NotImplementedError

class OpenAIGPT(BaseModel):
    def __init__(self, api_key: str, *args, **kwargs) -> None:
        super().__init__()
        self.model_name = kwargs.get('model', 'gpt-3.5-turbo')
        self.client = OpenAI(api_key=api_key)
        self.api_key = api_key
        self.args = args
        self.kwargs = kwargs

    def set_mode_parallel(self):
        self.client = None
    
    def reinstantiate(self):
        self.client = OpenAI(api_key=self.api_key)

    def __call__(self, input_messages: List[dict]) -> List[dict]:
        try:
            res = self.client.chat.completions.create(
            messages=input_messages,
            **self.kwargs
            )
        except Exception as e:
            print(f"Error: {e}")
            print(f"Input messages: {input_messages}")
            res = None
        return res
    
class CommandR(BaseModel):
    def __init__(self, api_key: str, *args, **kwargs) -> None:
        super().__init__()
        self.model_name = kwargs.get('model', 'command-r')
        print(f"Model name: {self.model_name}")
        self.client = cohere.Client(api_key=api_key, base_url="https://stg.api.cohere.ai/v1")
        self.api_key = api_key
        self.args = args
        self.kwargs = kwargs

    def __call__(self, input_messages: List[Dict], message: str = None) -> List[Dict]:

        if message is None:
            chat_history, message = self._make_cohere_compatibile(input_messages)

        try:
            response = self.client.chat(
                    chat_history=chat_history,
                    message=message,
                    **self.kwargs   
                    )
        except Exception as e:
            print(f"Error: {e}")
            print(f"Input messages: {input_messages}")
            response = None

        return response
    
    def _make_cohere_compatibile(self, input_messages: List[dict]) -> List[Dict[str, str]]:

        chat_history = []
        for i, input_message in enumerate(input_messages):
            if input_message['role'] == 'user':
                chat_history.append({'role': 'USER', 'message': input_message['content']})
            elif input_message['role'] == 'system':
                chat_history.append({'role': 'SYSTEM', 'message': input_message['content']})
            elif input_message['role'] == 'assistant':
                chat_history.append({'role': 'CHATBOT', 'message': input_message['content']})
            

            if chat_history[-1]['message'] == '':
                print("Last message is empty. Removing it.")
                print(f'input before failure: {input_messages[i-1]}')
                print(f'input : {input_messages[i]}')
                chat_history[-1]['message'] = f"Last message is empty. Removing it."

        last_input = chat_history[-1]['message']
        input_messages = chat_history[:-1]

        return input_messages, last_input
    
    def set_mode_parallel(self):
        self.client = None
    
    def reinstantiate(self):
        self.client = cohere.Client(api_key=self.api_key, base_url="https://stg.api.cohere.ai/v1")


class LLM_API(BaseModel):
    def __init__(self, api_key: str, *args, **kwargs) -> None:
        super().__init__()
        self.model_name = kwargs.get('model', 'meta-llama/Meta-Llama-3-8B')
        if "/" in self.model_name:
            self.model_name = self.model_name.split("/")[-1]
        print(f"Model name: {self.model_name}")
        self.client = Together(api_key=api_key)
        self.api_key = api_key
        self.args = args
        self.kwargs = kwargs

    def set_mode_parallel(self):
        self.client = None
    
    def reinstantiate(self):
        self.client = Together(api_key=self.api_key)

    def __call__(self, input_messages: List[dict]) -> List[dict]:
        try:
            res = self.client.chat.completions.create(
            messages=input_messages,
            **self.kwargs
            )
        except RuntimeError as e:
            print(f"Error: {e}")
            print(f"Input messages: {input_messages}")
            res = None
        return res
