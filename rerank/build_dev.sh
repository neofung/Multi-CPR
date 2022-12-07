data_name="medical"
data_name_prefix="med"

mkdir -p dev/${data_name}

python build_dev.py \
	--tokenizer_name hfl/chinese-roberta-wwm-ext \
	--truncate 256 \
	--qrel_file ../data/${data_name}/${data_name_prefix}_dev.tsv \
	--query_file ../data/${data_name}/${data_name_prefix}_dev_query.tsv \
	--corpus_file ../data/${data_name}/${data_name_prefix}_corpus.tsv \
	--topk 1000 \
	--retrieval_file ../retrieval/output/${data_name}/hfl/chinese-roberta-wwm-ext_avg.dev.l2.out \
	--ranking_file dev/${data_name}/dev.top1000.json \
	--label_file dev/${data_name}/dev.top1000.label.txt
