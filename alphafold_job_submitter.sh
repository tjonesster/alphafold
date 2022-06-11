#!/usr/bin/bash

num_models=100

source /home/jonestl5/miniconda3/bin/activate af2_7

#alphafold_runner.slurm
while read p; do 
echo $p 
sbid=$(sbatch --export=infile=$p,db_preset=reduced_dbs alphafold_runner_cache.slurm | awk '{print $4}') 
sbid2=$(sbatch --export=infile=$p,db_preset=full_dbs alphafold_runner_cache.slurm | awk '{print $4}' ) 

sbatch --dependency=afterok:$sbid,afterok:$sbid2 --export=infile=$p alphafold_runner.slurm

done < fileList.txt
