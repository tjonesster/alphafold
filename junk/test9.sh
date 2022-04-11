#!/bin/bash
./run_alphafold.py --fasta_names forAlican11.fasta --job_name forAlican --model_names model_5 --overwrite --num_structures 10 --num_recycle 4 --use_precomputed_msas --model_preset multimer
