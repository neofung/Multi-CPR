python build_train.py \
	--tokenizer_name hfl/chinese-roberta-wwm-ext \
	--truncate 256 \
	--qrel_file ../data/ecom/qrels.train.tsv \
	--query_file ../data/ecom/train.query.txt \
	--corpus_file ../data/ecom/corpus.tsv \
	--retrieval_file ../retrieval/output/ecom/hfl/chinese-roberta-wwm-ext_avg.train.l2.out \
	--ranking_file train/ecom/train.group.json
