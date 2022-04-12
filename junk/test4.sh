#!/bin/bash
./run_alphafold.py  --fasta_names lmrp_outward.fasta --job_name lmrp_outward--model_names model_5 --overwrite  --use_precomputed_msas
./run_alphafold.py --fasta_names lmrp_inward.fasta --job_name lmrp_inward --model_names model_5 --overwrite --use_precomputed_msas


