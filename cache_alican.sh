#!/bin/bash

#"output_dir": "/home/taylorjones/Documents/alphafold_output", 
#alican_3_recycles
#alican_20_recycles
while read p; do 
    echo ./run_alphafold.py --output_dir /home/taylorjones/Documents/alphafold_output/alican_3_recycles --fasta_names $p --model_names model_1, model_2, model_3, model_4, model_5 --overwrite --num_structures 1  --use_precomputed_msas --db_preset full_dbs --num_recycle 3
done < file_list.txt

while read p; do 
    ./run_alphafold.py --output_dir /home/taylorjones/Documents/alphafold_output/alican_3_recycles --fasta_names $p --model_names model_1,model_2,model_3,model_4,model_5 --overwrite --num_structures 1  --use_precomputed_msas --db_preset full_dbs --num_recycle 3
done < file_list.txt

while read p; do 
    ./run_alphafold.py --output_dir /home/taylorjones/Documents/alphafold_output/alican_20_recycles --fasta_names $p --model_names model_1, model_2, model_3, model_4, model_5 --overwrite --num_structures 1  --use_precomputed_msas --db_preset full_dbs --num_recycle 20
done < file_list.txt
