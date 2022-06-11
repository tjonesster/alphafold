#!/usr/bin/bash
#SBATCH --account=csb_gpu_acc
#SBATCH --partition=turing
#SBATCH --mail-user=taylor.l.jones.1@vanderbilt.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=30G
#SBATCH --time=0:30:00
#SBATCH --job-name=testing_stderr.txt
#SBATCH --output=testing_stdout.txt
#SBATCH --array=1-2


echo $testing
