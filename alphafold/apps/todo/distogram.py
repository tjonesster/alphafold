#!/usr/bin/env python

import jax.numpy as jnp
from jax import grad, jit, vmap
from jax import random
import pickle
import numpy


key = random.PRNGKey(0)

with open('result_model_5.pkl', 'rb') as f :
	pickle.load(f)


with open("/Users/taylorjones/af_weights/params/params_model_5.npz", 'rb') as f :
	weights=numpy.load(f)

print(weights)


