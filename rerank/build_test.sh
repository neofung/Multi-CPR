python build_test.py \
        --tokenizer_name hfl/chinese-roberta-wwm-ext \
        --truncate 256 \
        --query_file ../data/ecom/ecom_test_query.tsv \
        --corpus_file ../data/ecom/ecom_corpus.tsv \
        --topk 1000 \
        --retrieval_file ../retrieval/output/ecom/hfl/chinese-roberta-wwm-ext_avg.test.l2.out \
        --ranking_file test/ecom/test.top1000.json \
        --label_file test/ecom/test.top1000.label.txt
