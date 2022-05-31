
export options=' --uniref_max_hits 200 --max_msa_clusters 64 --max_extra_msa 128 '
export options2=' --num_recycle 0 '

for i in {1..100}
do
./run_alphafold.py --fasta_names hOTC1.fasta --job_name hOTC1_first_2_$i --model_names model_5 --overwrite --num_structures 1  --use_precomputed_msas --db_preset reduced_dbs $options $options2
done
