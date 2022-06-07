from enum import Enum



CONFIG_RUN_ALPHAFOLD = {
    "jackhmmer_binary_path": "/home/jonestl5/miniconda3/envs/af2_7/bin/jackhmmer",
    "kalign_binary_path": "/home/jonestl5/miniconda3/envs/af2_7/bin/kalign",
    "hhsearch_binary_path": "/home/jonestl5/miniconda3/envs/af2_7/bin/hhsearch",
    "hhblits_binary_path": "/home/jonestl5/miniconda3/envs/af2_7/bin/hhblits", 
    "uniref90_database_path":"/dors/csb/apps/alphafold-data/uniref90/uniref90.fasta",
    "mgnify_database_path": "/dors/csb/apps/alphafold-data/mgnify/mgy_clusters.fa",
    "uniclust30_database_path": "/dors/csb/apps/alphafold-data/uniclust30/uniclust30_2018_08/uniclust30_2018_08",
    "bfd_database_path": "/dors/csb/apps//alphafold-data/bfd/bfd_metaclust_clu_complete_id30_c90_final_seq.sorted_opt",
    "pdb70_database_path": "/dors/csb/apps/alphafold-data/pdb70/",
    "template_mmcif_dir": "/dors/csb/apps/alphafold-data/pdb_mmcif/mmcif_files",
    "obsolete_pdbs_path": "/dors/csb/apps/alphafold-data/pdb_mmcif/obsolete.dat",
    "fasta_path": "/home/jonestl5/dorsdir/alphafold_fastas",
    "output_dir": "/home/jonestl5/dorsdir/alphafold_ouput_small_clusters/",
    "model_names": ['model_5'], 
    "data_dir": "/home/jonestl5/dorsdir/alphafold_new_params",
    "max_template_date": "2020-05-14",
    "db_preset": "reduced_dbs", 
    "benchmark": False,
    "model_preset": "monomer",
    #"pdb_seqres_database_path": "/dors/csb/apps/alphafold-data/pdb_seqres/pdb_seqres.txt",
    #"pdb_seqres_database_path": "/dors/csb/apps/alphafold-data/pdb_seqres/pdb_seqres.txt",
    "pdb_seqres_database_path": "/dors/csb/apps/alphafold-data/pdb_seqres/pdb_seqres.txt",
#"/dors/csb/apps/alphafold-data/pdb_seqres/pdb_seqres.txt"
    "uniprot_database_path": "/dors/csb/apps/alphafold-data/uniprot/uniprot.fasta",
    "num_structures": 10,
    "small_bfd_database_path": "/dors/csb/apps/alphafold-data/small_bfd/bfd-first_non_consensus_sequences.fasta",
}


#AF2_DATADIR=/csbtmp/alphafold-data

# find out if they have the reduced databases on accre
#CONFIG_RUN_ALPHAFOLD_HOME = {
GPU_ACCRE_CONFIG_RUN_ALPHAFOLD = {
    "jackhmmer_binary_path": "/home/jonestl5/miniconda3/envs/af2_7/bin/jackhmmer",
    "kalign_binary_path": "/home/jonestl5/miniconda3/envs/af2_7/bin/kalign",
    "hhsearch_binary_path": "/home/jonestl5/miniconda3/envs/af2_7/bin/hhsearch",
    "hhblits_binary_path": "/home/jonestl5/miniconda3/envs/af2_7/bin/hhblits", 
    "uniref90_database_path":"/csbtmp/alphafold-data/uniref90/uniref90.fasta",
    "mgnify_database_path": "/csbtmp/alphafold-data/mgnify/mgy_clusters.fa",
    "uniclust30_database_path": "/csbtmp/alphafold-data/uniclust30/uniclust30_2018_08/uniclust30_2018_08",
    "bfd_database_path": "/csbtmp/alphafold-data/bfd/bfd_metaclust_clu_complete_id30_c90_final_seq.sorted_opt",
    "pdb70_database_path": "/dors/csb/apps/alphafold-data/pdb70/",
    "template_mmcif_dir": "/dors/csb/apps/alphafold-data/pdb_mmcif/mmcif_files",
    "obsolete_pdbs_path": "/dors/csb/apps/alphafold-data/pdb_mmcif/obsolete.dat",
    "fasta_path": "/home/jonestl5/dorsdir/alphafold_fastas",
    "output_dir": "/home/jonestl5/dorsdir/alphafold_ouput_small_clusters/",
    "model_names": ['model_5'], 
    "data_dir": "/home/jonestl5/dorsdir/alphafold_new_params",

    "max_template_date": "2020-05-14",
    "db_preset": "reduced_dbs", 
    "benchmark": False,
    "model_preset": "monomer",
    "pdb_seqres_database_path": "/dors/csb/apps/alphafold-data/pdb_seqres/pdb_seqres.txt",
    "uniprot_database_path": "/csbtmp/alphafold-data/uniprot/uniprot.fasta",
    "num_structures": 10,
    "small_bfd_database_path": "/csbtmp/alphafold-data/small_bfd/bfd-first_non_consensus_sequences.fasta",
}
    #"fasta_path": "/home/taylorjones/Documents/alphafold_fastas/",
    #"output_dir": "/home/taylorjones/Documents/alphafold_output", 
    #"pdb70_database_path": "/csbtmp/alphafold-data/pdb70/pdb70", 
    #"output_dir": "/home/jonestl5/dorsdir/alphafold_output",
    #"data_dir": "/csbtmp/alphafold-data",
#/home/dorsDir/alphafold_new_params/params/
     #/uniprot/uniprot/uniprot.fasta",
    #"uniprot_database_path": "/media/taylorjones/bigboi/alphafold_data/uniprot/uniprot/uniprot.fasta",
    #"uniprot_database_path": "//uniprot/uniprot/uniprot.fasta",
    #"db_preset": "full_dbs", 
#bfd-first_non_consensus_sequences.fasta
   #"activations_output_path": "/media/taylorjones/8Tb1/alphafold_activations/",
    #"alignment_cache_path": "/media/taylorjones/bigboi/alphafold_data/alignment_cache",
    #"job_record_path": "/media/taylorjones/bigboi/alphafold_data/job_record.txt", 

# small_bfd


# additional enumerated types
# We are going to support mmseqs2 for alignments also

#}

CONFIG_RUN_ALPHAFOLD_HOME = {
    "fasta_path": "/home/taylorjones/Documents/alphafold_fastas/",
    "output_dir": "/home/taylorjones/Documents/alphafold_output", 
    "model_names": ['model_5'], 
    "data_dir": "/media/taylorjones/bigboi/alphafold_data/params2",
    "jackhmmer_binary_path": "/home/taylorjones/software/taylorsScripts/externalExecutables/linux_x86/jackhmmer", 
    "hhblits_binary_path": "/usr/local/bin/hhblits",
    "hhsearch_binary_path": "/usr/local/bin/hhsearch",
    "kalign_binary_path": "/usr/bin/kalign",
    "uniref90_database_path": "/media/taylorjones/8Tb1/alphafold_data/uniref90/uniref90.fasta",
    "mgnify_database_path": "/media/taylorjones/8Tb1/alphafold_data/mgnify/mgy_clusters_2018_12.fa",
    "small_bfd_database_path": "/media/taylorjones/bigboi/alphafold_data/bfd_small/bfd-first_non_consensus_sequences.fasta",
    "bfd_database_path": "/media/taylorjones/bigboi/alphafold_data/bfd/bfd_metaclust_clu_complete_id30_c90_final_seq.sorted_opt",
    "uniclust30_database_path": "/media/taylorjones/8Tb1/alphafold_data/uniclust30/uniclust30_2018_08/uniclust30_2018_08",
    "pdb70_database_path": "/media/taylorjones/8Tb1/alphafold_data/pdb70/pdb70",
    "template_mmcif_dir": "/media/taylorjones/8Tb1/alphafold_data/pdb_mmcif/mmcif_files",
    "max_template_date": "2020-05-14",
    "obsolete_pdbs_path": "/media/taylorjones/8Tb1/alphafold_data/pdb_mmcif/obsolete.dat", 
    #"db_preset": "reduced_dbs", 
    "db_preset": "full_dbs", 
    "benchmark": False,
    "activations_output_path": "/media/taylorjones/8Tb1/alphafold_activations/",
    "model_preset": "monomer",
    #"model_preset": "multimer",
    "pdb_seqres_database_path":"/media/taylorjones/bigboi/alphafold_data/uniprot/pdb_seqres/pdb_seqres.txt",
    "uniprot_database_path": "/media/taylorjones/bigboi/alphafold_data/uniprot/uniprot/uniprot.fasta",
    "num_structures": 1,
    "alignment_cache_path": "/media/taylorjones/bigboi/alphafold_data/alignment_cache",
    "job_record_path": "/media/taylorjones/bigboi/alphafold_data/job_record.txt", 
}


# additional enumerated types
# We are going to support mmseqs2 for alignments also
class alignment_methods(Enum):
    jackhmmer = "jackhmmer"
    mmseqs2 = "mmseqs2"

class database_sets(Enum):
    full_dbs = "full"
    full = "full"
    reduced_dbs = "reduced"
    reduced = "reduced"

