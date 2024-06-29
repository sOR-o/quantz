# Load model directly
from transformers import AutoTokenizer, AutoModelForCausalLM

MODEL = "google/gemma-2b"

tokenizer = AutoTokenizer.from_pretrained(MODEL, cache_dir=".cache/")
model = AutoModelForCausalLM.from_pretrained(MODEL, cache_dir=".cache/")

model.save_pretrained("models/gemma-2b")
tokenizer.save_pretrained("models/gemma-2b")
