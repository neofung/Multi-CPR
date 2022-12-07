data_name="medical"
data_name_prefix="med"

mkdir -p train/${data_name}

python build_train.py \
	--tokenizer_name hfl/chinese-roberta-wwm-ext \
	--truncate 256 \
	--qrel_file ../data/${data_name}/${data_name_prefix}_train.tsv \
	--query_file ../data/${data_name}/${data_name_prefix}_train_query.tsv \
	--corpus_file ../data/${data_name}/${data_name_prefix}_corpus.tsv \
	--retrieval_file ../retrieval/output/${data_name}/hfl/chinese-roberta-wwm-ext_avg.train.l2.out \
	--ranking_file train/${data_name}/train.group.json
