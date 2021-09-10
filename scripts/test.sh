export DATA_TYPE=DG_oxford4.0
export ROOT_PATH=..
export DEVICE=3
CUDA_VISIBLE_DEVICES=${DEVICE} \
python3 main.py \
--train_data_file ${ROOT_PATH}/data/${DATA_TYPE}/train \
--dev_data_file ${ROOT_PATH}/data/${DATA_TYPE}/dev \
--test_data_file ${ROOT_PATH}/data/${DATA_TYPE}/test \
--graph_path 2hops_100_directed_triple_filter.json \
--output_dir ${ROOT_PATH}/models/${DATA_TYPE}/grf-${DATA_TYPE} \
--source_length 110 \
--target_length 110 \
--model_type gpt2 \
--model_name_or_path ${ROOT_PATH}/models/gpt2-small \
--do_eval \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--workers 7 \
--seed 42 \
--evaluate_metrics bleu \
--overwrite_output_dir \
--aggregate_method max \
--gamma 0.5 \
