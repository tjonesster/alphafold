#!/usr/bin/bash
#SBATCH --account=csb_gpu_acc
#SBATCH --partition=turing
#SBATCH --mail-user=taylor.l.jones.1@vanderbilt.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=92G
#SBATCH --time=6:00:00
#SBATCH --job-name=af2_testing_output
#SBATCH --output=af2_testing_output.txt
#SBATCH --array=1-31


source /home/jonestl5/miniconda3/bin/activate af2_7

pdbPath=$(head -n $SLURM_ARRAY_TASK_ID filelist2.txt | tail -n 1 )

/home/jonestl5/dorsdir/alphafold/run_alphafold.py --fasta_names $pdbPath --use_precomputed_msas --overwrite --nowrite_pickle --mgnify_max_hits 25 --uniref_max_hits 1000 --norun_relax



