#!/usr/bin/env python

import pickle
import os
import sys
import uuid
import shutil
from enum import Enum
import fcntl 
import unittest
# from typing import List 

import argparse
from alphafold.user_config import CONFIG_RUN_ALPHAFOLD as defvalues 
from alphafold.user_config import alignment_methods 
from alphafold.user_config import database_sets

# float_list = list[float]

# path= "/media/taylorjones/bigboi/alphafold_data/alignment_cache"

# Options that are specific to this module
class operation_types(Enum):
    fetch = "fetch"
    stash = "stash"
    lookup = "lookup"
    fasta = "fasta"
    test = "test"

'''
Example of the manifest scheme:
    {
        "sequence_1": {
            (database_set, alignment_method): {"path", "date", "database_version"}
        }     
    }
'''

class alignment_retriever:
    '''
    Fetches a set of alignments from a cache
    
    commands: 
        fetch copies a set of alignments to a destination

    '''
    def __init__(self, root_path):
        self.root_path = root_path
        self.manifest_path = os.path.join(self.root_path, "manifest.pkl")
        self.read_manifest()
        self.manifest_updates = {}

    def read_manifest(self):
        '''Reads the manifest file'''
        try: 
            with open(self.manifest_file,'rb') as f:
                fcntl.flock(f, fcntl.LOCK_SH)
                self.manifest = pickle.load(f) # if it bombs here I don't know if it will be able to unlock
                fcntl.flock(f, fcntl.LOCK_UN)
        except:
            print("The manifest.pkl file did not exist. Creating it",sys.stderr)
            self.manifest = {}

    def save_manifest(self):
        '''
        Opens file, locks access to it. 
        Refreshes manifest
        Applies updates
        Saves manifest
        '''

        with open(self.manifest_file,'rb+') as f:
            fcntl.flock(f, fcntl.LOCK_EX)

            self.manifest = pickle.load(f)

            # apply updates to the manifest
            print("not implemeneted: apply updates to the manifest")

            pickle.dump(self.manifest, f)   
            fcntl.flock(f, fcntl.LOCK_UN)     

    def create_new_directory(self):
        '''
            Creates a unique directory name and returns the full path to it.
        '''

        new_dir = str(uuid.uuid4())

        while not os.path.exists(os.path.join(self.root_path, new_dir)):
            new_dir = str(uuid.uuid4()) 

        os.makedirs(os.path.join(self.root_path, new_dir))
    
        return os.path.join(self.root_path, new_dir)
        
    def lookup_sequence(self, method =None, database_set = None):
        '''
            Find out what directories may contain the given query.
        '''

        result =  self.manifest.get(sequence, False)

        if not result:
            return False

        results = [] 

        for key_pair, value in result.items():
            if database_set == None or database_set == key_pair[0]:
                if method == None or method == key_pair[1]:
                    results.append(value)    

        return results 

    def create_fasta_from_manifest(self, destination_path) -> bool:
        '''
        Creates a fasta file from the manifest
        '''
        assert not os.path.exists(destination_path),'The destination path already exists'
        assert os.path.exists('/'.join(destination_path.split('/')[:-1])), 'The parent folder does not exist'

        elements = [] 
        os.path.basename(destination_path)

        for element in self.manifest.keys():
            elements.append(element)

        labels = list(map(lambda x :str(x), range(len(thing.keys()))))

        sequences = dict(zip(labels, elements)))

        with open(destination_path) as f:
            for label, sequence in sequences.items():
                f.write(">{}\n{}\n".format(label, sequence))

        return True

    def fetch_alignments(self, sequence, dest_output_path,method = None, database_set = None):
        '''
            fetch a set of alignments
        '''

        source_dir_path = lookup_sequence(sequence)
        shutil.copy2(source_dir_path, dest_output_path)
    
    def stash_alignments(self, sequence, output_path, method = None, database_set = None):

        assert (method != None), "You must specify an alignment method to stash alignments"
        assert (database_set != None), "You must specify a database set to stash alignments"

        if not lookup_sequence(sequence):
            print("not implemented:insert into database")

        dir = create_new_directory()
        print("not implemented: copy the file to the new directory")
        shutil.copy2(output_path, dir)

        return False 

 # write a unit test class for the alignment retriever       
        
class TestAlignmentRetriever(unittest.TestCase):
    def setUp(self):
        self.retriever = alignment_retriever(path)

    def test_lookup_sequence(self):
        # self.assertEqual(self.retriever.lookup_sequence("sequence_1"), False)
        pass

    def test_fetch_alignments(self):
        # self.assertEqual(self.retriever.fetch_alignments("sequence_1", "dest_output_path"), False)
        pass

    def test_stash_alignments(self):
        # self.assertEqual(self.retriever.stash_alignments("sequence_1", "output_path", "method", "database_set"), False)
        pass

    def test_create_fasta_from_manifest(self):
        # self.assertEqual(self.retriever.create_fasta_from_manifest(), False)
        pass

if __name__ == "__main__":
    print("not implemented yet")

    parser = argparse.ArgumentParser(description="call_cache_lookup_util.py")
    parser.add_argument("operation", type=operation_types, choices=list(operation_types), help="The operation to perform")
    parser.add_argument('-r', '--root_path', help='Root path of the alignment cache.', default=defvalues['alignment_cache_path'])
    parser.add_argument('-s', '--sequence', help='Sequence to lookup')    
    parser.add_argument('-m', '--method', help='Alignment method to use', choices=list(alignment_methods))
    parser.add_argument("-d", "--database_set", type=database_sets, choices=list(database_sets), help="The database set to use", default=defvalues['database_set']) 
    parser.add_argument("-dest_path", "--destination_path", help="Where do you want to place the output or copy from the alignment.")
    parser.add_argument('--date', help='Date to use newer than date')


    args = parser.parse_args()
    
    if args.operation == operation_types.test:
        print("testing")
        unittest.main()
    else:

        # Assertions to avoid having to require anything
        assert(args.root_path != "" and args.root_path != None), "root_path should not bee an empty string or None"

        ar = alignment_retriever(args.root_path)

        if args.operation == operation_types.stash:   # add a new sequence
            print('stashing')
            msg = "stash operation requires: --sequence --method --database_set --destination_path."

            assert(args.sequence != "" and args.sequence != None), msg + " Sequence not provided."
            assert(args.destination_path != "" and args.destination_path != None), msg + " destination_path not provided."

            assert(args.method != "" and args.method != None), msg+ " Alignment method not provided."
            assert(args.database_set != "" and args.database_set != None), "database_set should not bee an empty string or None"

            ar.stash_alignments(args.sequence, args.destination_path, args.method, args.database_set)

        elif args.operation == operation_types.fetch: # copy an existing sequence    
            print('fetching')

            assert(args.sequence != "" and args.sequence != None), "sequence not provided"
            assert(args.destination_path != "" and args.destination_path != None), "destination_path not provided"


            ar.fetch_alignments(args.sequence, args.destination_path, args.method, args.database_set)

        elif args.operation == operation_types.lookup: # lookup a sequence
            print('looking up')
            ar.lookup_sequence(args.sequence, args.method, args.database_set)

        elif args.operation == operation_types.create_fasta:
            print("create_fasta not implemented yet ")
            ar.create_fasta_from_manifest(args.destination_path)


