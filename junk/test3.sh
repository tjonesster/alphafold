#!/bin/bash
./run_alphafold.py  --fasta_names lmrp_shuffle_1.fasta --job_name lmrp_shuffle_1 --model_names model_5 --overwrite  --use_precomputed_msas
./run_alphafold.py --fasta_names lmrp_shuffl2_2.fasta --job_name lmrp_shuffle_2 --model_names model_5 --overwrite --use_precomputed_msas


./run_alphafold.py --fasta_names eps15.fasta --job_name eps15 --model_names model_5 --overwrite --use_precomputed_msas
./run_alphafold.py --fasta_names fcho1.fasta --job_name fcho1 --model_names model_5 --overwrite --use_precomputed_msas
./run_alphafold.py --fasta_names fcho2.fasta --job_name fcho2 --model_names model_5 --overwrite --use_precomputed_msas


./run_alphafold.py --fasta_names eps15_and_fcho1.fasta --job_name eps15_and_fcho1 --model_names model_5 --overwrite --use_precomputed_msas --model_preset multimer
./run_alphafold.py --fasta_names eps15_and_fcho2.fasta --job_name eps15_and_fcho2 --model_names model_5 --overwrite --use_precomputed_msas --model_preset multimer


