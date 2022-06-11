#!/usr/bin/bash
#SBATCH --mail-user=taylor.l.jones.1@vanderbilt.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=16G
#SBATCH --time=0:05:00
#SBATCH --job-name=af2_testing_mini_run
#SBATCH --output=af2_test_thing
#SBATCH --array=1
#BATCH --array=1-2 # Num models 


num_models=100

source /home/jonestl5/miniconda3/bin/activate af2_7

#fastaPath=$(head -n $SLURM_ARRAY_TASK_ID filelist.txt | tail -n 1 )
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

options_14=" --num_recycle 4 --db_preset reduced_dbs"
options_15=" --num_recycle 0 --db_preset reduced_dbs"

options_16=" --num_recycle 4 --db_preset full_dbs"
options_17=" --num_recycle 0 --db_preset full_dbs"


option_id=$(($SLURM_ARRAY_TASK_ID / 100))
job_count_in_array=$(($SLURM_ARRAY_TASK_ID / $num_models))


these_options="options_$option_id"
opt_string=$(echo ${!these_options} | sed 's/-//g; s/_//g; s/ /_/g')



options_combined=$(echo --fasta_names lmrp_inward.fasta --output_dir /home/jonestl5/dorsdir/alphafold_output/lmrp_inward --job_name lmrp_"$opt_string"_id_"${!these_options}"  $generic_options  ${!these_options})


/home/jonestl5/dorsdir/alphafold/run_alphafold.py $options_combined



#--fasta_names lmrp_inward.fasta --output_dir /home/jonestl5/dorsdir/alphafold_output/lmrp_inward --job_name lmrp_$opt_string  $generic_options  $options_$(echo options$option_id)


