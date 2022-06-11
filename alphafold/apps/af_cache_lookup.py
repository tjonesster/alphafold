#!/usr/bin/env python3

# We are only going to worry about making this work for monomers.
# It would not be too much work to make it work for multimers but it should be easier to store a single version of each file
# I have stripped this down a lot to only use the monomer pipeline.... We were going to support multimers at one point but we decided not to do that.

import pickle
import os
from statistics import mode
import uuid
import shutil
from enum import Enum
import fcntl 
import unittest
import tempfile
import argparse
from pathlib import Path

from absl import logging
from alphafold import model

from alphafold.user_config import CONFIG_RUN_ALPHAFOLD as defvalues 
from alphafold.user_config import model_presets
from alphafold.user_config import db_presets 


'''
CURRENTLY ONLY SUPPORTS EXACT MATCHES

Future thing to support 
    Dumping things to a fasta file to search using hmm or blast

'''

# Options that are specific to this module
class operation_types(Enum):
    fetch = "fetch" # Fetch = retrieve a copy of the given alignments
    stash = "stash" # Store a set of alignment sin the cache
    lookup = "lookup" # Check to see if there are matching alignments
    fasta = "create_fasta" # Create cache for searching # probably not implemented yet 
    test = "test" # run test cases 
    link = "link" # symlink the directory into its proper location 

# New Style much simpler. May need to expand it later in order to support all use cases.
'''
    Example of the manifest scheme:
    {
        ("sequence_1", "database_set", "model_preset"): "path"
        }     
    }
'''

class alignment_retriever:
    """
    This class aids in the storage and retrieval of alignments 
    
    """

    def __init__(self, root_path):
        self.root_path = Path(root_path)
        self.manifest_path = os.path.join(self.root_path, "manifest.pkl")
        self.read_manifest()
        self.manifest_updates = {}

    def seq_upper(self, sequence):
        # Check if the input is good
        return sequence.upper()
        

    def read_manifest(self):
        '''
        Reads the manifest file

        '''
        try: 
            with open(self.manifest_path,'rb') as f:
                fcntl.flock(f, fcntl.LOCK_SH)
                self.manifest = pickle.load(f) # if it bombs here I don't know if it will be able to unlock
                fcntl.flock(f, fcntl.LOCK_UN)
        except:
            print("The manifest.pkl file did not exist.")
            self.manifest = {}

            with open(self.manifest_path,'w+b') as out_file:
                pickle.dump(self.manifest, out_file)   


    def link_msa_dir(self, sequence = None, dir_path = None, db_preset = None, model_preset = None):
        """
        Links the directory to the destination directory.
        
        sequence: The sequence to link
        destination_dir: The directory to link to
        db_preset: The database preset to link to
        model_preset: The model preset to link to
        
        
        """

        assert sequence is not None, "Link operation request a sequence"
        assert dir_path is not None, "Link operation requires destination path"
        assert db_preset is not None, "Link operation requires database preset"
        assert model_preset is not None, "Link operation requires model preset"

        dir = self.lookup_sequence(sequence, db_preset=db_preset, model_preset=model_preset)
        

        if dir == False: 
            dir = self.create_new_directory()

        os.symlink(dir, dir_path)

    def save_manifest(self):
        '''
        Opens file, locks access to it. 
        Refreshes manifest
        Applies updates
        Saves manifest
        '''
        print("saving")

        #"I don't that this file locking works across nodes... so this is kinda problematic... still has race conditions"
        #"I think that we could easily be rewritten to use h5py which may be safe for multiple loaders... need to look into it"
        in_file = open(self.manifest_path,'rb+')
        fcntl.flock(in_file, fcntl.LOCK_EX)
        self.manifest = pickle.load(in_file)

        t = {**self.manifest, **self.manifest_updates}

        out_file = open(self.manifest_path,'wb+')

        pickle.dump(t, out_file)   

        out_file.close()

        fcntl.flock(in_file, fcntl.LOCK_UN)     
        in_file.close()

        self.manifest = t 

    def create_new_directory(self) -> str:
        '''
        Creates a directory with a unique identifier. Uniqueness is confirmed 
        Returns string which is a path to the directory 
        '''

        new_dir = str(uuid.uuid4())

        while os.path.exists(os.path.join(self.root_path, new_dir)):
            new_dir = str(uuid.uuid4()) 

        #os.makedirs(os.path.join(self.root_path, new_dir))
    
        return os.path.join(self.root_path, new_dir)
        
    def lookup_sequence(self, sequence, db_preset, model_preset) -> str:
        '''
            Find out what directories may contain the given query.
        '''

        assert sequence, "Must specify a sequence for the lookup operation"

        sequence = self.seq_upper(sequence)

        result =  self.manifest.get((sequence,db_preset,model_preset), False)

        return result

    # This class has changed since this has been used so it is likely that there were compatability breaking changes 
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


    
    def fetch_alignments(self, sequence:str,dir_path, db_preset, model_preset):
        '''
            Fetch a set of alignments and place it at a desgnated path
        
            sequence: str
            dir_path: the path where you would like to copy the cache element to 
            db_preset: reduced_dbs or full_dbs
            model_prest: monomer, multimer, other 
        '''

        assert sequence != "", "af_cache_lookup: Fetch operation requires sequence argument"
        assert dest_output_path != "", "af_cache_lookup: Fetch operation requires directory argument argument"
        
        sequence = self.seq_upper(sequence)

        source_dir_path = self.lookup_sequence(sequence, db_preset=db_preset, model_preset=model_preset)
        
        shutil.copytree(source_dir_path, dir_path)

    
    def stash_alignments(self, sequence,dir_path,db_preset, model_preset, ):
        '''
        Takes a directory and copies it to a places. Records the sequence in the manifest.pkl file.

        sequence:
        dir_path:
        db_preset:
        model_preset:
        '''

        assert dir_path != None, "You need to specify a destination path to stash alignments"
        assert sequence != None, "Stash operations request a sequence argument" 

        sequence= self.seq_upper(sequence)
        
        result = self.lookup_sequence(sequence, db_preset=db_preset, model_preset=model_preset)

        assert result == False, "The sequence you are trying to stash is already in the manifest"

        dir = self.create_new_directory()

        self.manifest_updates[sequence] = dir
 
        shutil.copytree(dir_path, dir)

        self.save_manifest()

        return True

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

    logging.set_verbosity(logging.INFO)

    parser = argparse.ArgumentParser(description="af_cache_lookup.py")
    parser.add_argument("operation", type=operation_types, choices=list(operation_types), help="The operation to perform")
    parser.add_argument('-r', '--root_path', help='Root path of the alignment cache.', default=defvalues.get('alignment_cache_path', None))
    parser.add_argument('-s', '--sequence', help='Sequence to lookup')    
    parser.add_argument('-db', "--db_preset", type=db_presets, choices=list(db_presets), help='Database_status')
    parser.add_argument('-mp', "--model_preset", type=model_presets, choices=list(model_presets), help='Database_status',default="monomer")
    parser.add_argument("-d", "--dir", help="Where do you want to place the output or copy from the alignment.")

    args = parser.parse_args()
    print(args)
    
    if args.operation == operation_types.test:
        unittest.main()
    else:

        # Assertions to avoid having to require anything
        assert(args.root_path != "" and args.root_path != None), "root_path should not bee an empty string or None"

        ar = alignment_retriever(args.root_path)

        if args.operation == operation_types.stash:   # add a new sequence
            print('stashing')

            ar.stash_alignments(args.sequence,  dir_path = args.dir, db_set = None )

        elif args.operation == operation_types.fetch: # copy an existing sequence    
            print('fetching')

            #ar.fetch_alignments(args.sequence, args.dir)
            ar.fetch_alignments(args.sequence, args.dir, db_preset = args.db_preset, model_preset = args.model_preset)

        elif args.operation == operation_types.link:

            ar.link_msa_dir(args.sequence, args.dir, args.database_set )

        elif args.operation == operation_types.lookup: # lookup a sequence

            results = ar.lookup_sequence(args.sequence)
            print(results)

        elif args.operation == operation_types.create_fasta:
            print("create_fasta not implemented yet ")

            ar.create_fasta_from_manifest(args.dir)
