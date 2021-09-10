import json

f = open('../models/gpt2-small/vocab.json', 'r')
vocab = json.load(f)
f.close()
vocab["<|bos|>"] = len(vocab)
print(vocab["<|bos|>"])
vocab["<|pad|>"] = len(vocab)
print(vocab['<|pad|>'])
vocab["<|sep|>"] = len(vocab)
print(vocab["<|sep|>"])
print(len(vocab))
f = open('../models/gpt2-small/vocab.json', 'w')
vocab = json.dump(vocab, f)
f.close()


