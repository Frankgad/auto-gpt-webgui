#!/bin/bash
# git clone https://github.com/Torantulino/Auto-GPT.git auto-gpt
# git -C auto-gpt checkout 4d42e14d3d3db3c64f1df0a425f5c3460bc82a56
# pip install -r auto-gpt/requirements.txt


git clone -b stable https://github.com/Significant-Gravitas/Auto-GPT.git auto-gpt
export MAKEFLAGS="-j$(nproc)"
pip install --no-cache-dir -r auto-gpt/requirements.txt --ignore-installed packaging
