#!/usr/bin/env python

# This is not finished yet

from absl import flags, logging, app
from Bio.PDB import PDBParser


from alphafold.common import protein 
from alphafold.relax import relax

# Need to finish implementing this

MAX_TEMPLATE_HITS = 20
RELAX_MAX_ITERATIONS = 0
RELAX_ENERGY_TOLERANCE = 2.39
RELAX_STIFFNESS = 10.0
RELAX_EXCLUDE_RESIDUES = []
RELAX_MAX_OUTER_ITERATIONS = 3

print("testing")

flags.DEFINE_string('ground_truth', None, 'The model that will be used as the ground truth pointset.')
flags.DEFINE_list('model_names', None, 'Names of models to use.') # I still need to fix this flag # This was broken when the multimer code came out
flags.DEFINE_integer('num_relaxes', 1, "Number of relaxes to perform.")


# Create the ability to relax everything


FLAGS = flags.FLAGS

def main(argv):

    relaxed_output_path = "/home/taylorjones/Documents/testing"

    amber_relaxer = relax.AmberRelaxation(
        max_iterations=RELAX_MAX_ITERATIONS,
        tolerance=RELAX_ENERGY_TOLERANCE,
        stiffness=RELAX_STIFFNESS,
        exclude_residues=RELAX_EXCLUDE_RESIDUES,
        max_outer_iterations=RELAX_MAX_OUTER_ITERATIONS)

    # amber_relaxer.process(prot=unrelaxed_protein)

    # for a in range(FLAGS.num_relaxes):
        # print(a)


    # With open file f 
    current_structure = protein.from_pdb_string(f.read())

    relaxed_pdb_string, _,_ = amber_relaxer.process(prot=current_structure)

    with open(relaxed_output_path, 'r') as f:
        f.write(relaxed_pdb_string)

    print("testing")


if __name__ == "__main__":

    flags.mark_flags_as_required([
        'model_names',
    #   'num_relaxes',
  ])

    app.run(main)


    #   relaxed_pdb_str, _, _ = amber_relaxer.process(prot=unrelaxed_protein)
