#!/usr/bin/env python
import os
def create_fasta_from_manifest(destination_path):
    '''
    Creates a fasta file from the manifest
    '''
    assert not os.path.exists(destination_path)

    elements = [] 

    os.path.basename(destination_path)
    
    print("not implemented: create a fasta file from the manifest")

    thing = {"apple": "red"}

    for element in thing.keys():
        elements.append(element)

    print(list(map(lambda x :str(x), range(len(thing.keys())))))

    # with open()
    # if os.path.exists(destination_path)
    
    # os.path.b


    return elements

create_fasta_from_manifest(os.path.join("asdfasdfasdf", "asdfasdfasdf"))