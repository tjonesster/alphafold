#!/bin/bash
./run_alphafold.py  --fasta_names 2.A.26.1.1_wt.fasta --job_name 2.A.26.1.1_wt_mgnify_25_uniref_100 --mgnify_max_hits 25 --uniref_max_hits 100 --model_names model_5 --overwrite  --use_precomputed_msas --num_structures 10 --norun_relax
