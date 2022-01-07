#!/usr/bin/env python

import pickle
import os
import sys
import uuid
import copy
import shutil
from enum import Enum
import fcntl #  Should only work on linux and mac

# import pyhmmer3

# fnctl.flock(file, fcntl.LOCK)

import argparse
from alphafold.user_config import CONFIG_RUN_ALPHAFOLD as defvalues 

# path= "/media/taylorjones/bigboi/alphafold_data/alignment_cache"

# add more enumerated types
# not implemented yet

# Options that are specific to this module
class operation_types(Enum):

    add = 1
    copy = 2
    lookup = 3

'''
Example:
    {
        "sequence_1": [
            (full_monomer, reduced_monomer, multimer, multimer_reduced, path, alignment_method, date)
            (full_monomer, reduced_monomer, multimer, multimer_reduced, path, alignment_method, date)
            ]
    }
'''


class alignment_retriever:
    def __init__(self, root_path):
        self.root_path = ""
        self.manifest_path = os.path.join(self.root_path, "manifest.pkl")
        self.manifest_file = open(self.manifest_path, 'wb')
        self.read_manifest()

    def read_manifest(self):
        try: 
            with open(self.manifest_file,'rb') as f:
                fcntl.flock(f, fcntl.LOCK_SH)
                self.manifest = pickle.load(f) # if it bombs here I don't know if it will be able to unlock
                fcntl.flock(f, fcntl.LOCK_UN)
        except:
            print("The manifest.pkl file did not exist. Creating it",sys.stderr)
            self.manifest = {}

    def save_manifest(self):
        with open(self.manifest_file,'wb') as f:
            fcntl.flock(f, fcntl.LOCK_EX)
            pickle.dump(self.manifest, f)   
            fcntl.flock(f, fcntl.LOCK_UN)

    def create_new_directory(self):
        new_dir = str(uuid.uuid4())

        while not os.path.exists(new_dir):
            new_dir = str(uuid.uuid4())

        return new_dir
        
    def lookup_sequence(self):
        result =  self.manifest.get(sequence, False)
        return os.path.join(self.root_path, result) if result else False

    def copy_alignments(self, sequence, dest_output_path):
        print("not implemented yet")
        source_dir_path = lookup_sequence(sequence)
        copy.copy()
        shutil.copy2(source_dir_path, dest_output_path)
        

if __name__ == "__main__":
    print("not implemented yet")
    parser = argparse.ArgumentParser(description="call_cache_lookup_util.py")
    parser.add_argument("operation", choices=list(operation_types), help="The operation to perform")
    parser.add_argument('-r', '--root_path', help='root path of the alignment cache', default=defvalues['alignment_cache_path'])
    parser.add_argument('-s', '--sequence', help='sequence to lookup')    

    add_parser.add_argument("-dest_path", "--destination_path", help="output file")
    subparsers = parser.add_subparsers(help='sub-command help')
    
    add_parser = subparsers.add_parser('add', help='add help')  
    # add_parser.add_argument("-s", "--sequence", help="input file")

    
    lookup_parser = subparsers.add_parser('lookup', help='lookup help') 
    # lookup_parser.add_argument("-s", "--sequence", help="input file")   
    # lookup_parser.set_defaults(func=lookup_sequence)    

    copy_parser = subparsers.add_parser('copy', help='copy help')   
    # copy_parser.add_argument("-s", "--sequence", help="input file") 
    

    args = parser.parse_args()
    print(args)
    ar = alignment_retriever(args.root_path)

    if args.operation == operation_types.add:   # add a new sequence
        print("not implemented yet")    
    elif args.operation == operation_types.copy: # copy an existing sequence    
        print("not implemented yet")    
    elif args.operation == operation_types.lookup: # lookup a sequence
        print("not implemented yet")

    # if args.operation == operation_types.add:  


