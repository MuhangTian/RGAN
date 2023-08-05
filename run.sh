#!/bin/bash
#SBATCH --job-name=timeGAN
#SBATCH --time=30-00:00:00
#SBATCH --partition=compsci-gpu
#SBATCH --gres=gpu:1
#SBATCH --nodelist=gpu-compute6
#SBATCH --mem=50G
#SBATCH --mail-user=muhang.tian@duke.edu
#SBATCH --output=logs/%j.out
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

export load_path="data/eicu-extract/TRAIN-eicu_multiple_60_1440_276.npy"
export name="timegan_24hrs.joblib"

source /etc/profile.d/modules.sh
module load cuda/cuda-9.0

python timegan_train.py \
    --load_path "${load_path}" \
    --name "${name}" \
    --wandb(base) mt361@compsci-login-01$ 