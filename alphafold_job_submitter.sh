#!/usr/bin/bash

num_models=100

source /home/jonestl5/miniconda3/bin/activate af2_7

#alphafold_runner.slurm
while read p; do 
echo $p 
sbid=$(sbatch --export=infile=$p,db_preset=reduced_dbs alphafold_runner_cache.slurm) 
sbid2=$(sbatch --export=infile=$p,db_preset=full_dbs alphafold_runner_cache.slurm) 

sbatch --dependency=$sbid,$sbid2 --exporrt=infile=$p alphafold_runner.slurm

done < fileList.txt
