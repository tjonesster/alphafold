#!/bin/bash
#./run_alphafold.py --fasta_names 2.A.26.1.1_wt.fasta --job_name LIVCS_all --model_names model_5 --overwrite --num_structures 100 --num_recycle 0 --use_precomputed_msas
#./run_alphafold.py --fasta_names 2.A.26.1.1_wt.fasta --job_name LIVCS_all_extra_msa_128 --model_names model_5 --overwrite --num_structures 100 --num_recycle 0  --max_extra_msa 128 --use_precomputed_msas
#./run_alphafold.py --fasta_names 2.A.26.1.1_wt.fasta --job_name LIVCS_clusters_15_database_reduced --model_names model_5 --overwrite --num_structures 10 --num_recycle 0  --max_extra_msa 128 --use_precomputed_msas --uniref_max_hits 500 --norun_relax --db_preset reduced_dbs --max_msa_clusters 30
./run_alphafold.py --fasta_names 2.A.3.2.5_wt.fasta --job_name 2.A.3.2.5_mgnify_50 --model_names model_5 --overwrite --num_structures 10 --num_recycle 0  --max_extra_msa 128 --use_precomputed_msas --uniref_max_hits 500 --norun_relax --db_preset reduced_dbs --max_msa_clusters 30 --mgnify_max_hits 50
