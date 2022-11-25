python build_train.py \
	--tokenizer_name hfl/chinese-roberta-wwm-ext \
	--truncate 256 \
	--qrel_file ../data/ecom/ecom_train.tsv \
	--query_file ../data/ecom/ecom_train_query.tsv \
	--corpus_file ../data/ecom/ecom_corpus.tsv \
	--retrieval_file ../retrieval/output/ecom/hfl/chinese-roberta-wwm-ext_avg.train.l2.out \
	--ranking_file train/ecom/train.group.json
