#!/usr/bin/env python

import tempfile
import argparse
import subprocess
import os
from tkinter import W

'''

This script requires you have dssp installed.
If you are using ubuntu it should be availble through apt, probably available through other major package 

I haven't planned on having multiple chains in the pdb file yet. Possibly something that we may want to handle down the line.

'''


def run_dssp(pdb_file):

    tmp_dir = tempfile.TemporaryDirectory()
    os.makedirs(tmp_dir.name, exist_ok = True)
    out_path  = os.path.join(tmp_dir.name, "out.dssp") # there is definitely a better way to do this.
    subprocess.run(["dssp", "-i", pdb_file, "-o", out_path])

    assert os.path.exists(out_path), "dssp did not produce an output file"

    lines = [] 
    with open(out_path, 'r') as f:
        for line in f:
            lines.append(line)
    
    return lines

def main(pdb_file = None):
    
    dssp_file_contents = run_dssp(pdb_file)

    for thing in dssp_file_contents:
        print(thing[13])
        # print(thing)
    # print(len(" 411  411 "))

    #parse dssp output

    #locate loop

    # pick center residue

    # pick other two residues

    # output_sequences




if __name__ == "__main__":

    parser = argparse.ArgumentParser(description="")
    parser.add_argument("-i", "--input") # 
    parser.add_argument("-c", "--chain") #  Not implemented yet
    #parser.add_argument() # 
    #parser.add_argument(description="If you do not want to determine the longest loop using dssp explicitly check provide indeces here") # residue range 
    #parser.add_argument() # most residues skipped in your loop


    args = parser.parse_args()
    assert args.input is not None, "You must provide a pdb file"
    # assert

    #print(args['input'])
    # print(args.input)

    #main(args)
    main(args.input)



