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
#SBATCH --job-name=af2_testing_output
#SBATCH --output=af2_testing_output.txt
#SBATCH --array=1-300 # Num models 


num_models=100

source /home/jonestl5/miniconda3/bin/activate af2_7

fastaPath=$(head -n $SLURM_ARRAY_TASK_ID filelist.txt | tail -n 1 )
generic_options=" --norun_relax --nowrite_pickle --overwrite --use_precomputed_msas "


options_0=" --num_recycle 4 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset reduced_dbs"
options_1=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset reduced_dbs"
options_2=" --num_recycle 0 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30  --bfd_max_hits 100 --db_preset reduced_dbs"
options_3=" --num_recycle 0 --max_extra_msa 50  --uniref_max_hits 100 --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset reduced_dbs"
options_4=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100  --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset reduced_dbs"
options_5=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --bfd_max_hits 100 --db_preset reduced_dbs"
options_6=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30  --db_preset reduced_dbs"

options_7=" --num_recycle 4 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset full_dbs"
options_8=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset full_dbs"
options_9=" --num_recycle 0 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30  --bfd_max_hits 100 --db_preset full_dbs"
options_10=" --num_recycle 0 --max_extra_msa 50  --uniref_max_hits 100 --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset full_dbs"
options_11=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100  --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset full_dbs"
options_12=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --bfd_max_hits 100 --db_preset full_dbs"
options_13=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30  --db_preset full_dbs"

opt_string=$(echo $options_1 sed 's/-//g; s/_//g; s/ /_/g')

option_id=$(($SLURM_ARRAY_TASK_ID/100))

/home/jonestl5/dorsdir/alphafold/run_alphafold.py --fasta_names mtc1_inward.fasta --output_dir mtc1_normal_$SLURM_ARRAY_TASK_ID 

