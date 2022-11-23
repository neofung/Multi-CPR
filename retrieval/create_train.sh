data_name="ecom"
python create_train.py \
	--qrels_file ../data/$data_name/qrels.train.tsv \
	--query_file ../data/$data_name/train.query.txt \
	--collection_file ../data/$data_name/corpus.tsv \
	--save_to ../data/$data_name/train/train.json \
	--tokenizer_name hfl/chinese-roberta-wwm-ext
