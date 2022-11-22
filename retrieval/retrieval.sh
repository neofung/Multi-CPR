python retrieval.py \
	--index_file indices/ecom/ct_corpus.pt \
	--input_file ../data/ecom/train.query.txt \
	--max_sequence_length=256 \
	--model_path output_model/ecom_model/hfl/chinese-roberta-wwm-ext_avg/ \
	--output_file output/ecom/hfl/chinese-roberta-wwm-ext_avg.train.l2.out \
	--pool_type avg

python retrieval.py \
	--index_file indices/ecom/ct_corpus.pt \
	--input_file ../data/ecom/dev.query.txt \
	--max_sequence_length=256 \
	--model_path output_model/ecom_model/hfl/chinese-roberta-wwm-ext_avg/ \
	--output_file output/ecom/hfl/chinese-roberta-wwm-ext_avg.dev.l2.out \
	--pool_type avg
