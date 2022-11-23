DEV_DATA_PATH=dev/ecom
MODEL_PATH=fintune_models/ecom_roberta_base
RESULT_PATH=result/ecom_bert_base_rank_res

CUDA_VISIBLE_DEVICES=0 python run_marco.py \
  --output_dir ${MODEL_PATH} \
  --model_name_or_path ${MODEL_PATH} \
  --tokenizer_name hfl/chinese-roberta-wwm-ext \
  --do_predict \
  --max_len 256 \
  --fp16 \
  --per_device_eval_batch_size 64 \
  --dataloader_num_workers 8 \
  --pred_path ${DEV_DATA_PATH}/dev.top1000.json  \
  --pred_id_file  ${DEV_DATA_PATH}/dev.top1000.label.txt \
  --run_id baseline \
  --rank_score_path ${RESULT_PATH}
