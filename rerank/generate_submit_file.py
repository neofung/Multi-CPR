#!/usr/bin/env python
# coding: utf-8

# In[2]:


import logging
import os
from collections import OrderedDict
try:
    get_ipython
    from tqdm.notebook import tqdm as tqdm
except:
    from tqdm import tqdm
finally:
    tqdm().pandas()

logger = logging.getLogger(__name__)


# In[3]:


for file_path in ["result/ecom_bert_base_rank_res", "result/medical_bert_base_rank_res"]:
    scenario = file_path.split("/")[-1].split("_")[0]
    results = OrderedDict()
    with open(file_path) as fin:
        for line in tqdm(fin.readlines()):
            qid, _, pid, _, score, _ = line.split(" ")
            if qid not in results:
                results[qid] = []
            results[qid].append((pid, float(score)))
    with open(f"result/{scenario}_test.tsv", "w") as fout:
        for key,values in tqdm(results.items(), total=len(results)):
            values = sorted(values, key = lambda x:x[1], reverse=True)
            values = [t[0] for t in values]
            fout.write(f"{key}\t{','.join(values[:10])}\n")


# In[ ]:




