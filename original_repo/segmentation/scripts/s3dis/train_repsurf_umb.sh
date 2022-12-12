#!/bin/bash

export PYTHONPATH=./

log_dir='repsurf_umb_A5'

python3 tool/train.py --log_dir ${log_dir} --dataset S3DIS \
          --batch_size 8 \
          --batch_size_val 12 \
          --workers 16 \
          --gpus 0 1 \
          --model repsurf.repsurf_umb_ssg \
          --optimizer AdamW \
          --min_val 60 \
          --epoch 100 \
          --lr_decay_epochs 60 80 \
          --test_area 5 \
          --learning_rate 0.006 \
          --lr_decay 0.1 \
          --weight_decay 1e-2 \
          --freeze_epoch 10 \
          --color_contrast \
          --color_shift \
          --color_jitter \
          --hs_shift
