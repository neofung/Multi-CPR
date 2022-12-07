data_name="medical"
data_name_prefix="med"

mkdir -p indices/${data_name}/
python encoder_corpus.py \
	--model_path output_model/${data_name}_model/hfl/chinese-roberta-wwm-ext_avg \
	--max_sequence_length 256 \
	--input_file ../data/${data_name}/${data_name_prefix}_corpus.tsv \
	--output_file indices/${data_name}/ct_corpus.pt \
	--pool_type avg
