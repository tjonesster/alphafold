#!/bin/bash


export TF_FORCE_UNIFIED_MEMORY=1
export XLA_PYTHON_CLIENT_MEM_FRACTION=4.0



./run_alphafold.py --fasta_names forAlican11.fasta --job_name forAlican22_gpu --model_names model_5_multimer_v2 --overwrite --num_structures 1 --num_recycle 4 --use_precomputed_msas --model_preset multimer
