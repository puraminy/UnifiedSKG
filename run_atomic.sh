python3.7 train.py \
	--seed 2 \
	--cfg Salesforce/T5_base_prefix_atomic.cfg \
	--run_name T5_base_prefix_atomic \
	--logging_strategy steps \
	--logging_first_step true \
	--logging_steps 4 \
	--evaluation_strategy steps \
	--eval_steps 5000 \
	--metric_for_best_model avr \
	--greater_is_better true \
	--save_strategy steps \
	--save_steps 5000 \
	--save_total_limit 1 \
	--load_best_model_at_end \
	--gradient_accumulation_steps 8 \
	--num_train_epochs 1 \
	--adafactor true \
	--learning_rate 5e-5 \
	--do_eval \
	--do_predict \
	--predict_with_generate \
	--output_dir output/T5_base_prefix_atomic \
	--per_device_train_batch_size 2 \
	--per_device_eval_batch_size 4 \
	--generation_num_beams 4 \
	--generation_max_length 128 \
	--input_max_length 528 \
	--ddp_find_unused_parameters true \
	--do_train \
	#--overwrite_output_dir \