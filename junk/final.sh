#!/bin/bash
./run_alphafold.py  --fasta_names 2.A.1.1.91.fasta_wt.fasta --mgnify_max_hits 50 --uniref_max_hits 1000 --model_names model_5 --overwrite  --use_precomputed_msas --num_structures 10 --norun_relax --db_preset reduced_dbs
