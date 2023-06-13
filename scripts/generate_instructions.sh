batch_dir=data/hunyuan7b_generations/

/usr/local/miniconda3/bin/python self_instruct/bootstrap_instructions.py \
    --batch_dir ${batch_dir} \
    --num_instructions_to_generate 50000 \
    --seed_tasks_path data/seed_tasks.jsonl \
    --api_key 'hCKimvqJWfK16svqcgtGxP1/P4M5wv0a' \
    --engine "sec-x-text-hunyuan-7b-001"
