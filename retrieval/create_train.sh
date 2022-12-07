data_name="medical"
data_name_prefix="med"

mkdir -p ../data/$data_name/train/

python create_train.py \
	--qrels_file ../data/$data_name/${data_name_prefix}_train.tsv \
	--query_file ../data/$data_name/${data_name_prefix}_train_query.tsv \
	--collection_file ../data/$data_name/${data_name_prefix}_corpus.tsv \
	--save_to ../data/$data_name/train/train.json \
	--tokenizer_name hfl/chinese-roberta-wwm-ext
