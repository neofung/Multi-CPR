python encoder_corpus.py \
	--model_path output_model/ecom_model/hfl/chinese-roberta-wwm-ext_avg \
	--max_sequence_length 256 \
	--input_file ../data/ecom/corpus.tsv \
	--output_file indices/ecom/ct_corpus.pt \
	--pool_type avg
