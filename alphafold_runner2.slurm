#!/usr/bin/bash
#SBATCH --account=csb_gpu_acc
#SBATCH --partition=turing
#SBATCH --mail-user=taylor.l.jones.1@vanderbilt.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=48G
#SBATCH --time=6:00:00
#SBATCH --job-name=af2_testing_output
#SBATCH --output=af2_testing_output.txt
#SBATCH --array=1-100


source /home/jonestl5/miniconda3/bin/activate af2_7

pdbPath=$(head -n $SLURM_ARRAY_TASK_ID filelist.txt | tail -n 1 )

#/home/jonestl5/dorsdir/alphafold/run_alphafold.py --fasta_names $pdbPath --use_precomputed_msas --overwrite --nowrite_pickle --mgnify_max_hits 30 --uniref_max_hits 100 --norun_relax --max_msa_clusters 10 --num_recycle 0 --max_extra_msa 100
#/home/jonestl5/dorsdir/alphafold/run_alphafold.py --fasta_names mtc1_inward.fasta --output_dir mtc1_normal_$SLURM_ARRAY_TASK_ID --use_precomputed_msas --overwrite --nowrite_pickle --mgnify_max_hits 30 --uniref_max_hits 100 --norun_relax --max_msa_clusters 100 --num_recycle 0 --max_extra_msa 50

/home/jonestl5/dorsdir/alphafold/run_alphafold.py --fasta_names mtc1_outward.fasta --outfile mtc1_$SLURM_ARRAY_TASK_ID --use_precomputed_msas --overwrite --nowrite_pickle --mgnify_max_hits 30 --uniref_max_hits 100 --norun_relax --max_msa_clusters 100 --num_recycle 0 --max_extra_msa 50



#./run_alphafold.py --fasta_names final_test.fasta --model_names model_5 --overwrite --num_structures 10 --num_recycle 0 --max_extra_msa 16 --db_preset reduced_dbs --mgnify_max_hits 30 --uniref_max_hits 100 --norun_relax  --use_precomputed_msas  --max_extra_msa 100 --max_msa_clusters 10

