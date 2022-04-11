#!/bin/bash
./run_alphafold.py --fasta_names DRD4_AF_A.fasta --job_name DRD4.fasta --model_names model_5 --overwrite --num_structures 10  --use_precomputed_msas --db_preset reduced_dbs
