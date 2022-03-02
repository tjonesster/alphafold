#!/usr/bin/env python
from alphafold.model import lddt
import pickle
from alphafold.common import protein, residue_constants
import numpy as np 
from absl import app, flags, logging
import jax


'''
Current issues:
    Only reads pkl files
    Does not handle multiple chains
    Assumes that all atoms are present within the model

'''

flags.DEFINE_string('true_points', None, 'Path to true points')
flags.DEFINE_string('predicted_points', None, 'Path to predicted points')
flags.DEFINE_string('features', None, 'features')

FLAGS = flags.FLAGS


def lddt_from_pdb(true_points, predicted_poitns, features):
    
    protein.load_pdb(true_points)
    protein.load_pdb(predicted_points)




def lddt_from_pkls(true_points, predicted_points, features):
    '''
    This function takes in the true and predicted points and the features.
    It then calculates the lddt score.
    '''
    with open("features.pkl", 'rb') as f:
        features = pickle.load(f)

    #print(features['aatype'])


    with open("result_structure_0_model_5.pkl", "rb") as f:
        prediction_pkl = pickle.load(f)

    with open("result_structure_0_model_5.pkl", "rb") as f:
        experimental_pkl = pickle.load(f)


    for key in features.keys():
        try:
            #print("Key: ", key)
            #print(prediction_pkl[key].keys())
            pass
        except:
            pass

    predicted_points = protein.from_prediction(features, experimental_pkl)
    true_points = protein.from_prediction(features, experimental_pkl)

    for key in prediction_pkl.keys():
        try:
            #print("Key: ", key)
            #print(prediction_pkl[key].keys())
            pass
        except:
            pass

    #print(prediction_pkl.keys())


    #print(prediction_pkl['structure_module']['final_atom_positions'])
    #print("prediction:", prediction_pkl['structure_module']['final_atom_positions'].shape)

    #print(predicted_points.atom_mask)
    #atom_mask = jax.numpy.logical_and(predicted_points.atom_mask, true_points.atom_mask)
    # predicted_points.

    a,b,c = predicted_points.atom_positions.shape
    #a,b,c = prediction_pkl['structure_module']['final_atom_positions'].shape
    #print("a,b,c", a,b,c)

    t = lddt.lddt(prediction_pkl['structure_module']['final_atom_positions'],
        prediction_pkl['structure_module']['final_atom_positions'],
        np.ones((a,b,1))
    )

    #print(predicted_points.atom_mask.shape)
    jax.lax.stop_gradient(t)


    print(t)
    #print(len(t))

    

# For loading from pickle files
def main(argv):

    return lddt_from_pkls(FLAGS.true_points, FLAGS.predicted_points, FLAGS.features)


if __name__ == "__main__":
    print("")

    flags.mark_flag_as_required('true_points')
    flags.mark_flag_as_required('predicted_points')
    flags.mark_flag_as_required('features')


    app.run(main)
