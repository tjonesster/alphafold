#!/bin/bash

export options=' --uniref_max_hits 500 --max_msa_clusters 64 --max_extra_msa 128 '
export options2=' --num_recycle 0 '

#reduced
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_10_structs_reduced_dbs_recycle_3_1 --model_names model_5 --overwrite --num_structures 20 --db_preset reduced_dbs --num_recycle 3 --use_precomputed_msas $options 
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_10_structs_reduced_dbs_recycle_3_2 --model_names model_5 --overwrite --num_structures 20 --db_preset reduced_dbs --num_recycle 3 --use_precomputed_msas $options 
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_10_structs_reduced_dbs_recycle_3_3 --model_names model_5 --overwrite --num_structures 20 --db_preset reduced_dbs --num_recycle 3 --use_precomputed_msas $options

#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_10_structs_reduced_dbs_recycle_0_1 --model_names model_5 --overwrite --num_structures 20 --db_preset reduced_dbs --num_recycle 0 --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_10_structs_reduced_dbs_recycle_0_2 --model_names model_5 --overwrite --num_structures 20 --db_preset reduced_dbs --num_recycle 0 --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_10_structs_reduced_dbs_recycle_0_3 --model_names model_5 --overwrite --num_structures 20 --db_preset reduced_dbs --num_recycle 0 --use_precomputed_msas $options $options2

#full
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_10_structs_full_dbs_recycle_3_1 --model_names model_5 --overwrite --num_structures 20 --db_preset full_dbs --num_recycle 3 --use_precomputed_msas $options 
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_10_structs_full_dbs_recycle_3_2 --model_names model_5 --overwrite --num_structures 20 --db_preset full_dbs --num_recycle 3 --use_precomputed_msas $options 
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_10_structs_full_dbs_recycle_3_3 --model_names model_5 --overwrite --num_structures 20 --db_preset full_dbs --num_recycle 3 --use_precomputed_msas $options

#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_10_structs_full_dbs_recycle_0_1 --model_names model_5 --overwrite --num_structures 20 --db_preset full_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_10_structs_full_dbs_recycle_0_2 --model_names model_5 --overwrite --num_structures 20 --db_preset full_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_10_structs_full_dbs_recycle_0_3 --model_names model_5 --overwrite --num_structures 20 --db_preset full_dbs --use_precomputed_msas $options $options2



# 10 Runs Rebuild the runner
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_0 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_1 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_2 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_3 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_4 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_5 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_6 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_7 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_8 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_9 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_10 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_11 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_12 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_13 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_14 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_15 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_16 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_17 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_18 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_19 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
#./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_20 --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2

./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_10_structs_full_dbs_recycle_3_1 --model_names model_5 --overwrite --num_structures 20 --db_preset full_dbs --num_recycle 3 --use_precomputed_msas $options 
