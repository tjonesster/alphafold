#!/usr/bin/bash
#SBATCH --account=csb_gpu_acc
#SBATCH --partition=turing
#SBATCH --mail-user=taylor.l.jones.1@vanderbilt.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=30G
#SBATCH --time=1:00:00
#SBATCH --job-name=af2_testing_output
#SBATCH --output=af2_testing_output.txt
#SBATCH --array=1 # Num models 
#SBATCH --exclude=gpu0057



num_models=100

source /home/jonestl5/miniconda3/bin/activate af2_7



options=" --exit_after_msa " 

/home/jonestl5/dorsdir/alphafold/run_alphafold.py --fasta_names $infile --output_dir ~/dorsdir/alphafold_output/junk/"$infile"_"$db_preset" --db_preset "$db_preset"



