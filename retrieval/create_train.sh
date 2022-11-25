data_name="ecom"
python create_train.py \
	--qrels_file ../data/$data_name/ecom_train.tsv \
	--query_file ../data/$data_name/ecom_train_query.tsv \
	--collection_file ../data/$data_name/ecom_corpus.tsv \
	--save_to ../data/$data_name/train/train.json \
	--tokenizer_name hfl/chinese-roberta-wwm-ext
