
export options=' --uniref_max_hits 1 --max_msa_clusters 32 --max_extra_msa 32 --bfd_max_hits 1 --mgnify_max_hits 1 --overwrite '
export options2=' --num_recycle 0 '

for i in {1..1}
do
./run_alphafold.py --fasta_names 1AGT.fasta --job_name 1AGT$i --model_names model_5 --overwrite --num_structures 1  --use_precomputed_msas --db_preset reduced_dbs $options $options2
done
