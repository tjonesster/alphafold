from enum import Enum

# This file mirrors the config.py setup that is used within alphafold

CONFIG_GENERAL = {
    "software": {
        'jackhmmer': {

        },
        'hhsearch': {
        },
    },
    "datasources": {
        'uniprot': {},
        'mgnify': {},
        'bfd': {},
        'pdb_structures': {},




    }

}

CONFIG_RUN_ALPHAFOLD = {
    "fasta_path": "/home/taylorjones/Documents/alphafold_fastas/",
    "output_dir": "/home/taylorjones/Documents/alphafold_output", 
    "model_names": ['model_5'], 
    "data_dir": "/media/taylorjones/bigboi/alphafold_data/params2",
    "jackhmmer_binary_path": "/home/taylorjones/software/taylorsScripts/externalExecutables/linux_x86/jackhmmer", 
    "hhblits_binary_path": "/usr/local/bin/hhblits",
    "hhsearch_binary_path": "/usr/local/bin/hhsearch",
    "kalign_binary_path": "/usr/bin/kalign",
    "uniref90_database_path": "/media/taylorjones/nvme_databases/uniref90/uniref90.fasta",
    "mgnify_database_path":  "/media/taylorjones/nvme_databases/mgnify/mgy_clusters_2018_12.fa",
    "small_bfd_database_path": "/media/taylorjones/nvme_databases/bfd_small/bfd-first_non_consensus_sequences.fasta",
    "bfd_database_path": "/media/taylorjones/bigboi/alphafold_data/bfd/bfd_metaclust_clu_complete_id30_c90_final_seq.sorted_opt",
    "uniclust30_database_path": "/media/taylorjones/nvme_databases/uniclust30/uniclust30_2018_08/uniclust30_2018_08",
    "pdb70_database_path": "/media/taylorjones/nvme_databases/pdb70/pdb70",
    "template_mmcif_dir": "/media/taylorjones/8Tb1/alphafold_data/pdb_mmcif/mmcif_files",
    "max_template_date": "2020-05-14",
    "obsolete_pdbs_path": "/media/taylorjones/8Tb1/alphafold_data/pdb_mmcif/obsolete.dat", 
    "db_preset": "full_dbs", 
    "benchmark": False,
    "activations_output_path": "/media/taylorjones/8Tb1/alphafold_activations/",
    "model_preset": "monomer",
    "pdb_seqres_database_path":"/media/taylorjones/nvme_databases/alphafold_data/uniprot/pdb_seqres/pdb_seqres.txt",
    "uniprot_database_path": "/media/taylorjones/nvme_databases/uniprot/uniprot.fasta",
    "num_structures": 10,
    "alignment_cache_path": "/media/taylorjones/bigboi/alignment_cache",
    "job_record_path": "/media/taylorjones/bigboi/alphafold_data/job_record.txt", 
}

# This is not exactly used
# additional enumerated types
# We are going to support mmseqs2 for alignments also
class alignment_methods(Enum):
    jackhmmer = "jackhmmer"
    default = "default"
    mmseqs2 = "mmseqs2"

class database_sets(Enum):
    full_dbs = "full"
    full = "full"
    reduced_dbs = "reduced"
    reduced = "reduced"

class model_presets(Enum):
    monomer = "monomer"
    multimer = "multimer"
