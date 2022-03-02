#!/bin/bash
./run_alphafold.py  --fasta_names lmrp_inward.fasta --job_name lmrp_cystine_inward_test_69 --model_names model_5 --overwrite  --use_precomputed_msas
#./run_alphafold.py --fasta_names lmrp_outward.fasta --job_name lmrp_cystine_outward --model_names model_5 --overwrite --use_precomputed_msas

#./run_alphafold.py --fasta_names lmrp_inward.fasta --job_name lmrp_cystine_inward_mgnify_50_uniref_500 --mgnify_max_hits 50 --uniref_max_hits 500 --model_names model_5 --overwrite --use_precomputed_msas
#./run_alphafold.py --fasta_names lmrp_outward.fasta --job_name lmrp_cystine_outward_mgnify_50_uniref_500 --mgnify_max_hits 50 --uniref_max_hits 500 --model_names model_5 --overwrite --use_precomputed_msas

#./run_alphafold.py --fasta_names lmrp_linker_inward.fasta --job_name lmrp_cystine_linker_inward_mgnify_50_uniref_500 --mgnify_max_hits 50 --uniref_max_hits 500 --model_names model_5 --overwrite --use_precomputed_msas
#./run_alphafold.py --fasta_names lmrp_linker_outward.fasta --job_name lmrp_cystine_linker_outward_mgnify_50_uniref_500 --mgnify_max_hits 50 --uniref_max_hits 500 --model_names model_5 --overwrite --use_precomputed_msas
