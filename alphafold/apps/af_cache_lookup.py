#!/usr/bin/env python

import pickle
import os
import sys
import uuid
import shutil
from enum import Enum
import fcntl 
import unittest
import tempfile
# from typing import List 
import argparse
from pathlib import Path

from absl import logging

from alphafold.data.tools import jackhmmer

from alphafold.user_config import CONFIG_RUN_ALPHAFOLD as defvalues 
from alphafold.user_config import alignment_methods 
from alphafold.user_config import database_sets
from alphafold.user_config import model_presets




'''
CURRENTLY ONLY SUPPORTS EXACT MATCHES

Future thing to support 
    Dumping things to a fasta file to search using hmm or blast





'''

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
            (database_set, alignment_method, preset): {"path", "date", "database_version"}
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
        self.root_path = Path(root_path)
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
            #logging.info("The manifest.pkl file did not exist. Creating it now.")
            print("The manifest.pkl file did not exist. Creating it now.")
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
            logging.info("not implemeneted: apply updates to the manifest")

            pickle.dump(self.manifest, f)   
            fcntl.flock(f, fcntl.LOCK_UN)     

    def create_new_directory(self):
        '''
            Creates a unique directory name and returns the full path to it.
        '''

        new_dir = str(uuid.uuid4())

        while os.path.exists(os.path.join(self.root_path, new_dir)):
            new_dir = str(uuid.uuid4()) 

        os.makedirs(os.path.join(self.root_path, new_dir))
    
        return os.path.join(self.root_path, new_dir)
        
    def lookup_sequence(self, sequence,  method = None, database_set = None, preset = None):
        '''
            Find out what directories may contain the given query.
        '''

        assert sequence, "Must specify a sequence for the lookup operation"

        result =  self.manifest.get(sequence, False)

        if not result:
            return False

        results = [] 

        for key_pair, value in result.items():
            if database_set == None or database_set == key_pair[0]:
                if method == None or method == key_pair[1]:
                    if model_preset == None or model_preset == key_pair[2]:
                        results.append(value)    

        return results 

    def create_fasta_from_manifest(self, destination_path) -> bool:
        '''
        Creates a fasta file from the manifest
        '''
        assert not os.path.exists(destination_path), 'The destination path already exists'
        assert os.path.exists('/'.join(destination_path.split('/')[:-1])), 'The parent folder does not exist'

        elements = [] 
        os.path.basename(destination_path)

        for element in self.manifest.keys():
            elements.append(element)

        labels = list(map(lambda x :str(x), range(len(thing.keys()))))

        sequences = dict(zip(labels, elements))

        with open(destination_path) as f:
            for label, sequence in sequences.items():
                f.write(">{}\n{}\n".format(label, sequence))

        return True

    def fetch_alignments(self, sequence:str, dest_output_path,method = None, database_set = None):
        '''
            fetch a set of alignments
        '''

        source_dir_path = self.lookup_sequence(sequence, method=method, database_set = database_set, preset=preset)
        
        #shutil.copy2(source_dir_path, dest_output_path) # The documentation seems to suggest that this should work... but does not...
        shutil.copytree(os.path.join(source_dir_path, "msas"), os.path.join(dest_output_path, "msas"))

    
    def stash_alignments(self, sequence, dest_path= None, method = None, database_set = None, preset = None):

        assert (method != None), "You must specify an alignment method to stash alignments"
        assert (database_set != None), "You must specify a database set to stash alignments"
        assert (preset != None), "You must specify a preset in order to store alignments"
        assert(dest_path != None), "You need to specify a destination path to stash alignments"


        # if not self.lookup_sequence(sequence, method=method, database_set = database_set, preset=preset):
        #     #logging.info("not implemented:insert into database")
        #     print("not implemented:insert into database")

        dir = self.create_new_directory()
        # print("not implemented: copy the file to the new directory")
        #logging.info("not implemented: copy the file to the new directory")
        #print(dir.__str__)
        #shutil.copy2(dest_path, dir.__str__)
        print("dir: ",dir)
        # print("")
        #shutil.copy2("/Users/taylorjones/Documents/alphafold/alphafold/apps/1SSP_E.fasta/msas/mgnify_hits.sto", dir)
        shutil.copytree("/Users/taylorjones/Documents/alphafold/alphafold/apps/1SSP_E.fasta/msas/", os.path.join(dir,"msas"))

        return False 

 # write a unit test class for the alignment retriever       
        
class TestAlignmentRetriever(unittest.TestCase):
    def setUp(self):
        self.retriever = alignment_retriever(path)
        self.temp_dir = tempfile.mkdtemp()
        self.retriever = alignment_retriever(self.temp_dir)

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
    #logging.info("not implemented yet")
    print("not implemented yet")

    parser = argparse.ArgumentParser(description="call_cache_lookup_util.py")
    parser.add_argument("operation", type=operation_types, choices=list(operation_types), help="The operation to perform")
    parser.add_argument('-r', '--root_path', help='Root path of the alignment cache.', default=defvalues['alignment_cache_path'])
    parser.add_argument('-s', '--sequence', help='Sequence to lookup')    
    parser.add_argument('-m', '--method', help='Alignment method to use',type=alignment_methods, choices=list(alignment_methods))
    parser.add_argument('-p', '--preset', help='Monomer or Multimer?', type=model_presets, choices=list(model_presets))
    parser.add_argument("-d", "--database_set", type=database_sets, choices=list(database_sets), help="The database set to use", default=defvalues.get('database_set', None)) 
    parser.add_argument("-dest_path", "--destination_path", help="Where do you want to place the output or copy from the alignment.")
    parser.add_argument('--date', help='Date to use newer than date')


    args = parser.parse_args()
    
    if args.operation == operation_types.test:
        #logging.info("testing")
        print("testing")
        unittest.main()
    else:

        # Assertions to avoid having to require anything
        assert(args.root_path != "" and args.root_path != None), "root_path should not bee an empty string or None"

        ar = alignment_retriever(args.root_path)

        if args.operation == operation_types.stash:   # add a new sequence
            #logging.info('stashing')
            print('stashing')
            msg = "stash operation requires: --sequence --method --database_set --destination_path."

            assert(args.sequence != "" and args.sequence != None), msg + " Sequence not provided."
            assert(args.destination_path != "" and args.destination_path != None), msg + " destination_path not provided."

            assert(args.method != "" and args.method != None), msg+ " Alignment method not provided."
            assert(args.database_set != "" and args.database_set != None), "database_set should not bee an empty string or None"

            ar.stash_alignments(args.sequence,  dest_path = args.destination_path, method= args.method, database_set =  args.database_set, preset=args.preset)

        elif args.operation == operation_types.fetch: # copy an existing sequence    
            #logging.info('fetching')
            print('fetching')

            assert(args.sequence != "" and args.sequence != None), "sequence not provided"
            assert(args.destination_path != "" and args.destination_path != None), "destination_path not provided"

            ar.fetch_alignments(args.sequence, args.destination_path, args.method, args.database_set)

        elif args.operation == operation_types.lookup: # lookup a sequence
            #logging.info('looking up')
            print('looking up')

            ar.lookup_sequence(args.sequence, args.method, args.database_set)

        elif args.operation == operation_types.create_fasta:
            #logging.info("create_fasta not implemented yet ")
            print("create_fasta not implemented yet ")

            ar.create_fasta_from_manifest(args.destination_path)


