data_name="medical"
data_name_prefix="med"

mkdir -p test/${data_name}

python build_test.py \
        --tokenizer_name hfl/chinese-roberta-wwm-ext \
        --truncate 256 \
        --query_file ../data/${data_name}/${data_name_prefix}_test_query.tsv \
        --corpus_file ../data/${data_name}/${data_name_prefix}_corpus.tsv \
        --topk 1000 \
        --retrieval_file ../retrieval/output/${data_name}/hfl/chinese-roberta-wwm-ext_avg.test.l2.out \
        --ranking_file test/${data_name}/test.top1000.json \
        --label_file test/${data_name}/test.top1000.label.txt
