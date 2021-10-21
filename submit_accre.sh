#asdf

module load Anaconda
conda activate jonestl5_alphafold

jackhmmer_path=/home/jonestl5/hmmer-3.3.1/src/jackhmmer
hh_search_path=/home/jonestl5/hh-suite/src/hhsearch
kaligh_binary_path=/home/jonestl5/kalign/kalign
hhblits_binary_path=home/jonestl5/hh-suite/src/hhblits

# create the msas if they are not 
sbatch  ... 

# depends previous task
# Build the various models
sbatch  ...  # Model 1
sbatch ... #Model 2
sbatch ... #Model 3
sbatch ... # Model 4
sbatch ... # Model 5


# Depends on all previous tasks
# Pick highest scoring model .





#environment variables
#fasta_paths
#data_dir
#output_dir
#model_names

#hhblits_binary_path


#kalign_binary_path
#/home/jonestl5/kalign/kalign



#uniref90_database_path
#mgnify_database_path
#bfd_database_path
#small_bfd_database_path
#uniclust30_database_path
#pdb70_database_path
#template_mmcif_dir
#max_template_date
#obsolete_pdbs_path


#preset
#benchmark
#random_seed
#process_msa



sbatch preprocess.slurm 

