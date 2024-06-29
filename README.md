# quantz

If you want to run hefty models on your laptop without turning it into a winter heater, follow these instructions!

###### Steps to Quantize gemma-2B Model to 4-bit

```bash
# Setup llama.cpp submodule
git submodule update --init --recursive llama.cpp
cd llama.cpp
make
cd ..

# Download gemma-2B Model from Hugging Face (HF)
export TRANSFORMERS_CACHE=".cache"
mkdir -p ".cache"
MODEL_PATH="quantz/models/gemma-2b"

pip install -r llama.cpp/requirements/requirements-convert-hf-to-gguf.txt
python llama.cpp/convert-hf-to-gguf.py $MODEL_PATH --outfile "/path-of-the-model/gemma-2b.gguf"

# Run Quantization using llama.coo
./server -m /path-of-the-model/gemma-2b-Q4_0.gguf -ngl 999 -c 2048 # For windows : .\main -m llama-2-7b.Q4_0.gguf -n 128
```

-Can be improved by transfer learning (obviously 😉)

## Contributing

Contributions to this project are welcome! Whether it's bug fixes, new features, or documentation improvements, your contributions are valuable.
