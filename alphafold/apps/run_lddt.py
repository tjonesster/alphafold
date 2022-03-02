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

    This should really be a single function which checks the file extensions but I have to move on to the next thing

'''

flags.DEFINE_string('true_points', None, 'Path to true points')
flags.DEFINE_string('predicted_points', None, 'Path to predicted points')
flags.DEFINE_string('features', None, 'features')

FLAGS = flags.FLAGS


def lddt_from_pdb(true_points, predicted_poitns, features):

    '''
        
    '''
    
    with open(true_points, 'rb') as f:
        true_points = pickle.load(f)
    predicted_points = protein.load_pdb(true_points)
    true_points = protein.load_pdb(predicted_points)
 

    # Should add code where 

    a,b,_ = predicted_points.atom_positions.shape


    t = lddt.lddt(predicted_points.atom_positions, true_points.atom_positions, np.ones((a,b,1)))
    jax.lax.stop_gradient(t)

    return t 
    




def lddt_from_pkls(true_file, predicted_file, features_file):
    '''
    This function takes in the true and predicted points and the features.
    It then calculates the lddt score.
    '''
    with open(features_file, 'rb') as f:
        features = pickle.load(f)

    with open(predicted_file, "rb") as f:
        prediction_pkl = pickle.load(f)

    with open(true_file, "rb") as f:
        experimental_pkl = pickle.load(f)

    predicted_points = protein.from_prediction(features, prediction_pkl)
    true_points = protein.from_prediction(features, experimental_pkl)

    a,b,_ = predicted_points.atom_positions.shape

    t = lddt.lddt(predicted_points.atom_positions, true_points.atom_positions, np.ones((a,b,1)))
    jax.lax.stop_gradient(t)

    return t 

    

# For loading from pickle files
def main(argv):

    ret = lddt_from_pkls(FLAGS.true_points, FLAGS.predicted_points, FLAGS.features)
    print(ret)
    return ret  
    


if __name__ == "__main__":
    print("")

    flags.mark_flag_as_required('true_points')
    flags.mark_flag_as_required('predicted_points')
    flags.mark_flag_as_required('features')


    app.run(main)
