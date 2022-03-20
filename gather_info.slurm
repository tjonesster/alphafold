#!/bin/sh

#SBATCH --account=csb_gpu_acc
#SBATCH --partition=turing
#SBATCH --mail-user=taylor.l.jones.1@vanderbilt.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --gres=gpu:1
#SBATCH --mem=24G
#SBATCH --time=4:00:00
#SBATCH --job-name=smi_output
#SBATCH --output=smi_output.txt2

#/home/jonestl5/miniconda3/bin/conda
nvidia-smi > smi_output.txt
