#!/bin/bash

while read p; do 
    #./run_alphafold.py --output_dir /home/taylorjones/Documents/new_transporters -fasta_names $p --model_names model_1,model_2,model_3,model_4,model_5 --overwrite --num_structures 1  --use_precomputed_msas --db_preset full_dbs --num_recycle 3 --norun_relax
    ./run_alphafold.py --output_dir /home/taylorjones/Documents/new_transporters -fasta_names $p --model_names model_1,model_2,model_3,model_4,model_5 --num_structures 1  --use_precomputed_msas --db_preset full_dbs --num_recycle 3 --norun_relax
done < new_structures_file_list.txt
