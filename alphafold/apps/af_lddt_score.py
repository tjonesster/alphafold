#!/usr/bin/env python

# This is not finished yet

# from re import L
from absl import flags, logging, app
from Bio.PDB import PDBParser


from alphafold.common import protein 
from alphafold.relax import relax
from alphafold.model import lddt

# Need to finish implementing this

MAX_TEMPLATE_HITS = 20
RELAX_MAX_ITERATIONS = 0
RELAX_ENERGY_TOLERANCE = 2.39
RELAX_STIFFNESS = 10.0
RELAX_EXCLUDE_RESIDUES = []
RELAX_MAX_OUTER_ITERATIONS = 3

print("testing")

flags.DEFINE_list('structure_names', None, 'Names of models to use.') # I still need to fix this flag # This was broken when the multimer code came out


# Create the ability to relax everything


FLAGS = flags.FLAGS

def main(argv):

    structures = []


    for structure in FLAGS.structure_names:
        with open(structure,"r") as f:
            structures.append(protein.from_pdb_string(f.read()))
    
    # structures[0]
    for structure in structures[1:]:
        print(lddt(structures[0], structure))




if __name__ == "__main__":

    flags.mark_flags_as_required([
        'model_names',
    #   'num_relaxes',
  ])

    app.run(main)


    #   relaxed_pdb_str, _, _ = amber_relaxer.process(prot=unrelaxed_protein)
