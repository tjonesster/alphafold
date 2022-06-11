#!/bin/bash --norc
#/usr/bin/bash

#SBATCH --account=csb_gpu_acc
#SBATCH --partition=turing
#SBATCH --mail-user=taylor.l.jones.1@vanderbilt.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=16G
#SBATCH --time=0:30:00
#SBATCH --job-name=af2_testing_run
#SBATCH --output=af2_near_final_stdout.txt
#SBATCH --error=af2_near_final_stderr.txt
#SBATCH --array=0-899
#SBATCH --open-mode=append
#SBATCH --exclude=gpu0057

num_models=100

# define infile

source /home/jonestl5/miniconda3/bin/activate af2_7

generic_options=" --norun_relax --nowrite_pickle --overwrite --use_precomputed_msas "

options_0=" --num_recycle 4 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset reduced_dbs"
options_1=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset reduced_dbs"
options_2=" --num_recycle 0 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30  --bfd_max_hits 100 --db_preset reduced_dbs"
options_3=" --num_recycle 0 --max_extra_msa 50  --uniref_max_hits 100 --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset reduced_dbs"
options_4=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100  --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset reduced_dbs"
options_5=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --bfd_max_hits 100 --db_preset reduced_dbs"
options_6=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30  --db_preset reduced_dbs"

options_7=" --num_recycle 4 --db_preset reduced_dbs"
options_8=" --num_recycle 0 --db_preset reduced_dbs"

#options_7=" --num_recycle 4 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset full_dbs"
#options_8=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset full_dbs"
#options_9=" --num_recycle 0 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30  --bfd_max_hits 100 --db_preset full_dbs"
#options_10=" --num_recycle 0 --max_extra_msa 50  --uniref_max_hits 100 --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset full_dbs"
#options_11=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100  --mgnify_max_hits 30 --bfd_max_hits 100 --db_preset full_dbs"
#options_12=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --bfd_max_hits 100 --db_preset full_dbs"
#options_13=" --num_recycle 0 --max_extra_msa 50 --max_msa_clusters 100 --uniref_max_hits 100 --mgnify_max_hits 30  --db_preset full_dbs"



option_id=$(($SLURM_ARRAY_TASK_ID / 100))
job_count_in_array=$(($SLURM_ARRAY_TASK_ID / $num_models))

pos_in_array=$(( $SLURM_ARRAY_TASK_ID -  ($job_count_in_array * $num_models) ))


these_options="options_$option_id"
opt_string=$(echo ${!these_options} | sed 's/-//g; s/_//g; s/ /_/g')



options_combined=$(echo --fasta_names $infile --output_dir /home/jonestl5/dorsdir/alphafold_output/$infile --job_name "$infile"_"$opt_string"_id_"$pos_in_array"  $generic_options  ${!these_options})


#echo $options_combined
/home/jonestl5/dorsdir/alphafold/run_alphafold.py $options_combined



#--fasta_names lmrp_inward.fasta --output_dir /home/jonestl5/dorsdir/alphafold_output/lmrp_inward --job_name lmrp_$opt_string  $generic_options  $options_$(echo options$option_id)


