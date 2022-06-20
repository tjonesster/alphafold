import argparse
import os

from alphafold.data import parsers
from alphafold.apps.af_cache_lookup import alignment_retriever
from alphafold.user_config import CONFIG_RUN_ALPHAFOLD as defvalues 



"""

Adds a set of sequences to an alignment cache

"""

def main(alignment_cache_path, base_path):
    ar = alignment_retriever(alignment_cache_path) #alignment cache default location 

    for root, dirs, files in os.walk("."):
    for file in files:
        if file.find("fasta") != -1:
            input_fasta_str = os.path.join(root,file)
            
            with open(input_fasta_str, 'r') as f:
                file = f.read()
            seqs, _ = parsers.parse_fasta(file)
            
            msa_output_dir = os.path.join(root,"msas")
            
            if not ar.lookup_sequence(seqs[0]):
                print(seqs)
                
                ar.stash_alignments(seqs[0], dir_path=msa_output_dir)


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description="af_cache_lookup.py")
    parser.add_argument("operation", type=operation_types, choices=list(operation_types), help="The operation to perform")
    parser.add_argument('-r', '--root_path', help='Root path of the alignment cache.', default=defvalues.get('alignment_cache_path', None))
    parser.add_argument('-dir', '--base_path', help='The path where we should start traversing it all')    

    args = parser.parse_args()
    print(args)

    main(args.root_path, args.base_path)))

