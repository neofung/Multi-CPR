data_name="medical"
TRAIN_DATA_DIR=train/${data_name}
DEV_DATA_DIR=dev/${data_name}
gpu="0"
num_gpu=1

CUDA_VISBLE_DEVICES=$gpu python -m torch.distributed.launch --master_port 2056 --nproc_per_node $num_gpu run_marco.py \
  --output_dir fintune_models/${data_name}_roberta_base \
  --model_name_or_path hfl/chinese-roberta-wwm-ext \
  --do_train \
  --train_dir ${TRAIN_DATA_DIR} \
  --dev_path ${DEV_DATA_DIR}/dev.top1000.json \
  --dev_id_file ${DEV_DATA_DIR}/dev.top1000.label.txt \
  --max_len 260 \
  --fp16 \
  --per_device_train_batch_size 8 \
  --train_group_size 8 \
  --gradient_accumulation_steps 2 \
  --per_device_eval_batch_size 8 \
  --warmup_ratio 0.1 \
  --weight_decay 0.01 \
  --learning_rate 1e-5 \
  --num_train_epochs 3 \
  --overwrite_output_dir \
  --dataloader_num_workers 8 \
  --evaluation_strategy steps \
  --eval_steps 9000 \
  --save_steps 9000 \
  --collaborative
