export TRANSFORMERS_CACHE=".cache"
mkdir -p ".cache"
MODEL_PATH="/Users/saurabh/Documents/projects/quantz/models/gemma-2b"

cd llama.cpp
pip install -r requirements/requirements-convert-hf-to-gguf.txt
python convert-hf-to-gguf.py $MODEL_PATH --outfile "/Users/saurabh/Documents/projects/quantz/output/gemma-2b.gguf"