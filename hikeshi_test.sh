#!/bin/bash
#./run_alphafold.py  --fasta_names hikeshi.fasta --job_name hikeshi_wt --model_names model_5 --overwrite  --use_precomputed_msas
#./run_alphafold.py --fasta_names hikeshi_V54L.fasta --job_name hikeshi_V54L --model_names model_5 --overwrite --use_precomputed_msas

#hikeshi_V54L.fasta
./run_alphafold.py  --fasta_names hikeshi.fasta --job_name hikeshi_wt_mgnify_50_uniref_500 --model_names model_5 --overwrite  --use_precomputed_msas --mgnify_max_hits 50 --uniref_max_hits 500
./run_alphafold.py --fasta_names hikeshi_V54L.fasta --job_name hikeshi_V54L_mgnify_50_uniref_500 --model_names model_5 --overwrite --use_precomputed_msas --mgnify_max_hits 50 --uniref_max_hits 500
