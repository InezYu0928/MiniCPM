formatted_time=$(date +"%Y%m%d%H%M%S")
echo $formatted_time


deepspeed --include localhost:0 finetune.py \
    --model_name_or_path /root/autodl-tmp/MiniCPM-2B-sft-fp32 \
    --output_dir /root/autodl-tmp/outputsft/$formatted_time/ \
    --train_data_path /root/MiniCPM/result/train.json \
    --eval_data_path /root/MiniCPM/result/dev.json \
    --learning_rate 5e-5 --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 1 --bf16 \
    --gradient_accumulation_steps 2 --warmup_steps 100 \
    --max_steps 3000 --weight_decay 0.01 \
    --evaluation_strategy steps --eval_steps 500 \
    --save_strategy steps --save_steps 500 --seed 42 \
    --log_level info --logging_strategy steps --logging_steps 10 \
    --deepspeed configs/ds_config_zero2_offload.json
