#!/bin/bash 
./run_alphafold.py --fasta_names final_test.fasta --model_names model_5 --overwrite --num_structures 10 --num_recycle 0 --max_extra_msa 16 --db_preset reduced_dbs --mgnify_max_hits 30 --uniref_max_hits 100 --norun_relax  --use_precomputed_msas  --max_extra_msa 100 --max_msa_clusters 10
