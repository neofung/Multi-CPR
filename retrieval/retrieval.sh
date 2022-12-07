data_name="medical"
data_name_prefix="med"

mkdir -p output/${data_name}/hfl/

python retrieval.py \
	--index_file indices/${data_name}/ct_corpus.pt \
	--input_file ../data/${data_name}/${data_name_prefix}_train_query.tsv \
	--max_sequence_length=256 \
	--model_path output_model/${data_name}_model/hfl/chinese-roberta-wwm-ext_avg/ \
	--output_file output/${data_name}/hfl/chinese-roberta-wwm-ext_avg.train.l2.out \
	--pool_type avg

python retrieval.py \
	--index_file indices/${data_name}/ct_corpus.pt \
	--input_file ../data/${data_name}/${data_name_prefix}_dev_query.tsv \
	--max_sequence_length=256 \
	--model_path output_model/${data_name}_model/hfl/chinese-roberta-wwm-ext_avg/ \
	--output_file output/${data_name}/hfl/chinese-roberta-wwm-ext_avg.dev.l2.out \
	--pool_type avg

python retrieval.py \
        --index_file indices/${data_name}/ct_corpus.pt \
        --input_file ../data/${data_name}/${data_name_prefix}_test_query.tsv \
        --max_sequence_length=256 \
        --model_path output_model/${data_name}_model/hfl/chinese-roberta-wwm-ext_avg/ \
        --output_file output/${data_name}/hfl/chinese-roberta-wwm-ext_avg.test.l2.out \
        --pool_type avg
