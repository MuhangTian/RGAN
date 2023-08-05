#!/bin/bash
source /etc/profile.d/modules.sh
module load cuda/cuda-10.2
module load cuda/cuda-9.0
python experiment.py