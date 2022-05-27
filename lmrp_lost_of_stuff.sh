#!/bin/bash

export options=' --uniref_max_hits 500 --max_msa_clusters 64 --max_extra_msa 128 '
export options2=' --num_recycle 0 '

for i in {1..100}
do
./run_alphafold.py --fasta_names lmrp.fasta --job_name lmrp_1_structs_lots_$i --model_names model_5 --overwrite --num_structures 1 --db_preset reduced_dbs --use_precomputed_msas $options $options2
done

