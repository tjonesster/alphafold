#!/bin/bash

./run_alphafold.py  --fasta_names hikeshi.fasta --job_name hikeshi_wt_mgnify_16_uniref_32 --model_names model_5 --overwrite  --use_precomputed_msas --mgnify_max_hits 16 --uniref_max_hits 32
./run_alphafold.py --fasta_names hikeshi_V54L.fasta --job_name hikeshi_V54L_mgnify_16_uniref_32 --model_names model_5 --overwrite --use_precomputed_msas --mgnify_max_hits 16 --uniref_max_hits 32
