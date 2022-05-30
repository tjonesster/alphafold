#!/usr/bin/bash
#SBATCH --account=csb_gpu_acc
#SBATCH --partition=turing
#SBATCH --gres=gpu:2
#SBATCH --mail-user=taylor.l.jones.1@vanderbilt.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --ntasks=1
#S#BATCH --cpus-per-task=2
#SBATCH --cpus-per-task=8
# --cpus-per-task=8
#SBATCH --mem=48G
#S#BATCH --time=06:00:00
#SBATCH --time=24:00:00
#SBATCH --job-name=cavolin_alphafold_testing
#SBATCH --output=cavolin_alphafold_testing.log



#source /home/jonestl5/miniconda3/bin/activate af2_7
#source /home/jonestl5/miniconda3/bin/activate jonestl5_alphafold
#source /home/jonestl5/miniconda3/bin/activate af2_cpu
source /home/jonestl5/miniconda3/bin/activate af2_7
#af2_cpu

export TF_FORCE_UNIFIED_MEMORY=1
export XLA_PYTHON_CLIENT_MEM_FRACTION=4.0

/home/jonestl5/dorsdir/alphafold/run_alphafold.py --fasta_names cavolin.fasta --use_precomputed_msas --model_preset multimer --model_names model_5_multimer_v2 --overwrite --job_name cav_test



#./run_alphafold.py --fasta_names final_test.fasta --model_names model_5 --overwrite --num_structures 10 --num_recycle 0 --max_extra_msa 16 --db_preset reduced_dbs --mgnify_max_hits 30 --uniref_max_hits 100 --norun_relax  --use_precomputed_msas  --max_extra_msa 100 --max_msa_clusters 10


#pdbPath=$(head -n $SLURM_ARRAY_TASK_ID filelist.txt | tail -n 1 )

#/home/jonestl5/dorsdir/alphafold/run_alphafold.py --fasta_names $pdbPath --use_precomputed_msas --overwrite --nowrite_pickle --mgnify_max_hits 30 --uniref_max_hits 100 --norun_relax --max_msa_clusters 10 --num_recycle 0 --max_extra_msa 100



#./run_alphafold.py --fasta_names final_test.fasta --model_names model_5 --overwrite --num_structures 10 --num_recycle 0 --max_extra_msa 16 --db_preset reduced_dbs --mgnify_max_hits 30 --uniref_max_hits 100 --norun_relax  --use_precomputed_msas  --max_extra_msa 100 --max_msa_clusters 10

