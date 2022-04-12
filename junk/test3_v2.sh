#!/bin/bash
./run_alphafold.py  --fasta_names lmrp_shuffle_1.fasta --job_name lmrp_shuffle_1 --model_names model_5 --overwrite --model_preset multimer
./run_alphafold.py --fasta_names lmrp_shuffle_2.fasta --job_name lmrp_shuffle_2 --model_names model_5 --overwrite --model_preset multimer


