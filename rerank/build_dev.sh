python build_dev.py \
	--tokenizer_name hfl/chinese-roberta-wwm-ext \
	--truncate 256 \
	--qrel_file ../data/ecom/qrels.dev.tsv \
	--query_file ../data/ecom/dev.query.txt \
	--corpus_file ../data/ecom/corpus.tsv \
	--topk 1000 \
	--retrieval_file ../retrieval/output/ecom/hfl/chinese-roberta-wwm-ext_avg.dev.l2.out \
	--ranking_file dev/ecom/dev.top1000.json \
	--label_file dev/ecom/dev.top1000.label.txt
