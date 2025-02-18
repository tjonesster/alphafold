# Copyright 2021 DeepMind Technologies Limited
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""A collection of common Haiku modules for use in protein folding."""
import numbers
from typing import Union, Sequence

import haiku as hk
import jax.numpy as jnp
import numpy as np

# Constant from scipy.stats.truncnorm.std(a=-2, b=2, loc=0., scale=1.)
TRUNCATED_NORMAL_STDDEV_FACTOR = np.asarray(.87962566103423978, dtype=np.float32)

def get_initializer_scale(initializer_name, input_shape):
  """Get Initializer for weights and scale to multiply activations by."""

  if initializer_name == 'zeros':
    w_init = hk.initializers.Constant(0.0)
  else:
    # fan-in scaling
    scale = 1.
    for channel_dim in input_shape:
      scale /= channel_dim
    if initializer_name == 'relu':
      scale *= 2

    noise_scale = scale

    stddev = np.sqrt(noise_scale)
    # Adjust stddev for truncation.
    stddev = stddev / TRUNCATED_NORMAL_STDDEV_FACTOR
    w_init = hk.initializers.TruncatedNormal(mean=0.0, stddev=stddev)

  return w_init


class Linear(hk.Module):
  """Protein folding specific Linear module.

  This differs from the standard Haiku Linear in a few ways:
    * It supports inputs of arbitrary rank #
    * Initializers are specified by strings
  """

  def __init__(self, num_output: Union[int, Sequence[int]], initializer: str = 'linear', num_input_dims: int = 1, use_bias: bool = True, bias_init: float = 0., precision = None, name: str = 'linear'):
    """Constructs Linear Module.

    Args:
      num_output: Number of output channels. Can be tuple when outputting
          multiple dimensions.
      initializer: What initializer to use, should be one of {'linear', 'relu',
        'zeros'}
      num_input_dims: Number of dimensions from the end to project.
      use_bias: Whether to include trainable bias
      bias_init: Value used to initialize bias.
      precision: What precision to use for matrix multiplication, defaults
        to None.
      name: Name of module, used for name scopes.
    """
    super().__init__(name=name)
    if isinstance(num_output, numbers.Integral):
      self.output_shape = (num_output,)
    else:
      self.output_shape = tuple(num_output)
    self.initializer = initializer
    self.use_bias = use_bias
    self.bias_init = bias_init
    self.num_input_dims = num_input_dims
    self.num_output_dims = len(self.output_shape)
    self.precision = precision

  def __call__(self, inputs):
    """Connects Module.

    Args:
      inputs: Tensor with at least num_input_dims dimensions.

    Returns:
      output of shape [...] + num_output.
    """

# Original version of this function completely replaced in alphafold multimer 
# I am going to keep this code here since I understood this version and don't understand the new version

    # weight_shape = [n_channels, self.num_output]
    # if self.initializer == 'linear':
    #   weight_init = hk.initializers.VarianceScaling(mode='fan_in', scale=1.) # fan-in preserves magnitude in forward pass and fan-out preserves magnitude in reverse pass 
    # elif self.initializer == 'relu':
    #   weight_init = hk.initializers.VarianceScaling(mode='fan_in', scale=2.)
    # elif self.initializer == 'zeros':
    #   weight_init = hk.initializers.Constant(0.0)

    # weights = hk.get_parameter('weights', weight_shape, inputs.dtype, weight_init)

    # # this is equivalent to einsum('...c,cd->...d', inputs, weights)
    # # but turns out to be slightly faster
    # inputs = jnp.swapaxes(inputs, -1, -2)
    # output = jnp.einsum('...cb,cd->...db', inputs, weights) # einstein summation 
    # output = jnp.swapaxes(output, -1, -2)

    # if self.use_bias:
    #   bias = hk.get_parameter('bias', [self.num_output], inputs.dtype, hk.initializers.Constant(self.bias_init))

    # num_input_dims = self.num_input_dims

    if self.num_input_dims > 0:
      in_shape = inputs.shape[-self.num_input_dims:]
    else:
      in_shape = ()

    weight_init = get_initializer_scale(self.initializer, in_shape)

    in_letters = 'abcde'[:self.num_input_dims]
    out_letters = 'hijkl'[:self.num_output_dims]

    weight_shape = in_shape + self.output_shape
    weights = hk.get_parameter('weights', weight_shape, inputs.dtype, weight_init)

    equation = f'...{in_letters}, {in_letters}{out_letters}->...{out_letters}'

    output = jnp.einsum(equation, inputs, weights, precision=self.precision)

    if self.use_bias:
      bias = hk.get_parameter('bias', self.output_shape, inputs.dtype, hk.initializers.Constant(self.bias_init))
      output += bias

    return output

