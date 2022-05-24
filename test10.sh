#!/bin/bash


export TF_FORCE_UNIFIED_MEMORY=1
export XLA_PYTHON_CLIENT_MEM_FRACTION=4.0



./run_alphafold.py --fasta_names T1105.fasta --job_name forAlican22_gpu --model_names model_5 --overwrite --num_structures 1 --num_recycle 12 --use_precomputed_msas --model_preset monomer_casp14
#--model_names model_5_multimer_v2 --overwrite --num_structures 1 --num_recycle 4 --use_precomputed_msas --model_preset multimer
