#!/bin/bash

accelerate launch fine_tune.py \
    --max_train_steps=3000 \
    --save_n_steps=50 \
    --model_checkpoint_n_steps=500 \
    --save_starting_step=1500 \
    --train_batch_size=4 \
    --lr_warmup_steps=150 \
    --learning_rate=1e-6 \
    --output_dir="outputs" \
    --data_dir="datasets/some_project/" \
    --latent_nan_checking \
    --aspect_ratio=1.00 \
    --mixed_precision=bf16  \
    --lr_scheduler="constant_with_warmup" \
    --use_8bit_adam \
    --vae_b16 \
    --validate_every_steps=2000 \
    --gradient_checkpointing \
    --noise_offset=0.05 \
    --snr_gamma \
    --test_prompts="man sitting at the table eating a bagle"