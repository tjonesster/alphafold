#!/usr/bin/env python

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

"""I am no longer following the coding standardard where you add linebreaks after 80 chars"""

"""Full AlphaFold protein structure prediction script."""
import json
import os
import pathlib
import pickle
import random
import shutil
import sys
import time
from typing import Dict, Union, Optional

from absl import app, flags, logging
import numpy as np

from alphafold.common import protein, residue_constants
from alphafold.data import pipeline, pipeline_multimer, templates
from alphafold.data.tools import hhsearch, hmmsearch
from alphafold.model import config, model, data
from alphafold.relax import relax

from alphafold.user_config import CONFIG_RUN_ALPHAFOLD as defvalues 

logging.set_verbosity(logging.INFO)

flags.DEFINE_list('is_prokaryote_list', None, 'Optional for multimer system, not used by the single chain system. This list should contain a boolean for each fasta false if unknown. These values determine the pairing method for the MSA.')

# Added by taylor # currently broken by the integration with alphafold multimer
flags.DEFINE_list('model_names', defvalues.get('model_names',False), 'Names of models to use.') # I still need to fix this flag # This was broken when the multimer code came out

# BINARY PATHS 
flags.DEFINE_string('hmmsearch_binary_path', defvalues.get('hmmsearch_binary_path', shutil.which('hmmsearch')), 'Path to the hmmsearch executable.')
flags.DEFINE_string('hmmbuild_binary_path', defvalues.get('hmmbuild',shutil.which('hmmbuild')), 'Path to the hmmbuild executable.')
flags.DEFINE_string('jackhmmer_binary_path', defvalues.get('jackhmmer_binary_path', shutil.which('jackhmmer')) , 'Path to the JackHMMER executable.')
flags.DEFINE_string('hhblits_binary_path', defvalues.get('hhblits_binary_path',shutil.which('hhblits')), 'Path to the HHblits executable.')
flags.DEFINE_string('kalign_binary_path', defvalues.get('kalign_binary_path', shutil.which('kalign')), 'Path to the Kalign executable.')
flags.DEFINE_string('hhsearch_binary_path', defvalues.get('hhsearch_binary_path', shutil.which('hhsearch')), 'Path to the HHsearch executable.')

# DATABASE & DATASET PATHS 
flags.DEFINE_string('uniref90_database_path', defvalues.get('uniref90_database_path', None), 'Path to the Uniref90 database for use by JackHMMER.')
flags.DEFINE_string('mgnify_database_path', defvalues.get('mgnify_database_path', None), 'Path to the MGnify database for use by JackHMMER.')
flags.DEFINE_string('bfd_database_path', defvalues.get('bfd_database_path', None), "Path to the bfd database.")
flags.DEFINE_string('small_bfd_database_path', defvalues.get("small_bfd_database_path", None), "Path to small bfd database")
flags.DEFINE_string('pdb_seqres_database_path', defvalues.get('pdb_seqres_database_path', None), 'Path to the PDB seqres database for use by hmmsearch.')
flags.DEFINE_string('uniprot_database_path', defvalues.get('uniprot_database_path', None), 'Path to the Uniprot database for use by JackHMMer.')
flags.DEFINE_string('template_mmcif_dir', defvalues.get('template_mmcif_dir', None), 'Path to a directory with template mmCIF structures, each named <pdb_id>.cif')
flags.DEFINE_string('uniclust30_database_path', defvalues.get('uniclust30_database_path', None), 'Path to uniclust30.')
flags.DEFINE_string("pdb70_database_path", defvalues.get("pdb70_database_path", None), "Path to the pdb70 directory")

# PDB setings 
flags.DEFINE_string('max_template_date', defvalues.get('max_template_date', "2020-05-14"), 'Maximum template release date to consider. Important if folding historical test sets.')
flags.DEFINE_string('obsolete_pdbs_path', defvalues.get('obsolete_pdbs_path',  None), 'Path to file containing a mapping from obsolete PDB IDs to the PDB IDs of their replacements.')

# Input / Output Paths
flags.DEFINE_list('fasta_names', defvalues.get('fasta_names', None), 'The names of the fasta files. They should be located in your output path.')
flags.DEFINE_string('fasta_path', defvalues.get('fasta_path', None), 'Path to the directory that contains the fastas.')
flags.DEFINE_string('output_dir', defvalues.get('output_dir', None), 'Path to a directory that will store the results.')
flags.DEFINE_string('data_dir', defvalues.get('data_dir', None), 'Path to directory of supporting data.')

# Preset standards 
flags.DEFINE_enum('db_preset', defvalues.get('db_preset',None), ['full_dbs', 'reduced_dbs'], 'Choose preset MSA database configuration - smaller genetic database config (reduced_dbs) or full genetic database config  (full_dbs)')

# Need to change this flag's default value
flags.DEFINE_enum('model_preset', defvalues.get('model_preset',None), ['monomer', 'monomer_casp14', 'monomer_ptm', 'multimer'], 'Choose preset model configuration - the monomer model, the monomer model with extra ensembling, monomer model with pTM head, or multimer model')

# I think that I would probably cut this out of the pipeline script
flags.DEFINE_boolean('benchmark', defvalues.get('benchmark', False), 'Run multiple JAX model evaluations to obtain a timing that excludes the compilation time, which should be more indicative of the time required for inferencing many proteins.') # I think that I would just include this in another script because you are not going really be using this in a standard workflow.

# Lifecycle - early exit / ommitting stages / running follow-up analysis
flags.DEFINE_integer('random_seed', defvalues.get('random_seed', None), 'The random seed for the data pipeline. By default, this is randomly generated. Note that even if this is set, Alphafold may still not be deterministic, because processes like GPU inference are nondeterministic.') # I really should give this a random value
flags.DEFINE_boolean('only_run_cleanup', defvalues.get('only_run_cleanup', False), "Should the algorithm only add the outputs of severla smaller models.")
flags.DEFINE_string('activations_output_path', defvalues.get('activations_output_path', None), "Output path to write out all of the activations.")
#flags.DEFINE_boolean('write_activations', defvalues.get('write_activations', False), "Write out additional logging information?")

# These two flags should do the same thing but process_msa = False may be broken now.
# use_precomputed_msas was introduced in alphafold multimer
flags.DEFINE_boolean('use_precomputed_msas', defvalues.get('use_precomputed_msas', False), 'Whether to read MSAs that  have been written to disk. WARNING: This will not check if the sequence, database or configuration have changed.')

# We have decided to remove this option
# flags.DEFINE_boolean('process_msa', defvalues.get('process_msa', True), "Whether or not the msa should be computed. If false then loaded from file.") # This flag does the same thing as the use_precomputed_msas but I kinda like my sloppier means of phrasing it.
# I don't think that this is working currently
flags.DEFINE_integer('num_recycle', defvalues.get('num_recycle', 3), 'Number of times that you want to recycle the params. Can\'t be set to less than 3 until we make some updates.') # I really should give this a random value
flags.DEFINE_boolean('exit_after_msa', defvalues.get('exit_after_msa', False ), "If true, the program will exit after computing the sequence input features. This can be useful if you are doing a block of runs on a cluster and ohly want to compute your alignments a single time.")
flags.DEFINE_integer('num_structures', defvalues.get('num_structures', 1 ), "Number of structures to generate.")
flags.DEFINE_string('job_name', defvalues.get('job_name', None), "Number of structures to generate.")

flags.DEFINE_boolean('overwrite', defvalues.get('overwrite', False), "If a directory exists should it be overwritten? Default False. Set to true to ignore a directory existing.")
flags.DEFINE_boolean('run_relax', defvalues.get('run_relax', True), "Do you want to run the relax or not?")

flags.DEFINE_integer("mgnify_max_hits", defvalues.get("mgnify_max_hits", 501), "How many hits should be kept from the mgnify clusters?")
flags.DEFINE_integer("uniref_max_hits", defvalues.get("uniref_max_hits", 10000), "How many hits should be kept from the uniref hits?")

flags.DEFINE_integer("max_uniprot_hits", defvalues.get("max_uniprot_hits", 5000), "How many hits should be kept from the uniprot hits?")

FLAGS = flags.FLAGS

MAX_TEMPLATE_HITS = 20
RELAX_MAX_ITERATIONS = 0
RELAX_ENERGY_TOLERANCE = 2.39
RELAX_STIFFNESS = 10.0
RELAX_EXCLUDE_RESIDUES = []
RELAX_MAX_OUTER_ITERATIONS = 3

# preset chaned to other flag name
# I don't like this function... Why not allow people to set flags by default that are not used
def _check_flag(flag_name: str, other_flag_name: str, should_be_set: bool):
  if should_be_set != bool(FLAGS[flag_name].value):
    verb = 'be' if should_be_set else 'not be'
    raise ValueError(f'{flag_name} must {verb} set when running with "--{other_flag_name}={FLAGS[other_flag_name].value}".')

def predict_structure(
    fasta_path: str,
    fasta_name: str,
    output_dir_base: str,
    data_pipeline: Union[pipeline.DataPipeline, pipeline_multimer.DataPipeline],
    model_runners: Dict[str, model.RunModel],
    amber_relaxer: relax.AmberRelaxation,
    benchmark: bool,
    random_seed: int,
    structure_dir: str,
    job_name: str, 
    overwrite: bool, 
    is_prokaryote: Optional[bool] = None,
    ):

  """Predicts structure using AlphaFold for the given sequence."""
  logging.info('Predicting %s', fasta_name)
  timings = {}

  if job_name is not None: 
    output_dir = os.path.join(output_dir_base, job_name)
  else:
    output_dir = os.path.join(output_dir_base, fasta_name)

  if not os.path.exists(output_dir):
    os.makedirs(output_dir)
  else:
    if not overwrite:
      logging.error("Overwrite is set to False and the output directory exists ")
      exit()

  msa_output_dir = os.path.join(output_dir, 'msas')
  if not os.path.exists(msa_output_dir):
    os.makedirs(msa_output_dir) # create the directory for the msa to be saved 

  shutil.copy2(fasta_path, os.path.join(output_dir, fasta_name)) # copy the fasta into the location of the output job_dir

  # Get features.
  t_0 = time.time()
  if is_prokaryote is None:
    feature_dict = data_pipeline.process(input_fasta_path=fasta_path, msa_output_dir=msa_output_dir)
  else:
    feature_dict = data_pipeline.process(input_fasta_path=fasta_path, msa_output_dir=msa_output_dir, is_prokaryote=is_prokaryote)
  timings['features'] = time.time() - t_0

  # Write out features as a pickled dictionary.  
  if FLAGS.exit_after_msa: 
    exit() 

  structure_output_dir = os.path.join(output_dir,structure_dir)  
  if not os.path.exists(structure_output_dir):
    os.makedirs(structure_output_dir) # create the directroy for the msa to be saved

  # format the output file that is going to be written for each 
  arguments_to_output = {
    'fasta_path': fasta_path,
    'fasta_name': fasta_name,
    'output_dir_base': output_dir_base,
    'msa_output_dir': msa_output_dir,
    'structure_output_dir': structure_output_dir,
    'random_seed': random_seed,
  } 

  features_output_path = os.path.join(structure_output_dir, 'features.pkl')
  with open(features_output_path, 'wb') as f:
    pickle.dump(feature_dict, f, protocol=4)

  with open(os.path.join(structure_output_dir, "arguments.txt"),"w") as f:
    f.write(json.dumps(arguments_to_output)) #write out the arguments for each job

  unrelaxed_pdbs = {}
  num_models=len(model_runners)

  for model_index, (model_name, model_runner) in enumerate(model_runners.items()):
    logging.info('Running model %s on %s', model_name, fasta_name)

    model_random_seed = model_index + random_seed * num_models
    processed_feature_dict = model_runner.process_features(feature_dict, random_seed=model_random_seed)
    timings[f'process_features_{model_name}'] = time.time() - t_0
    
    relaxed_pdbs = {}
    plddts = {}
    ranking_confidences = {}

    # Run a single model 
    for model_name, model_runner in model_runners.items():
      logging.info('Running model %s', model_name)

      t_0 = time.time()
      prediction_result = model_runner.predict(processed_feature_dict, random_seed=model_random_seed)
      t_diff =  time.time() - t_0
      timings[f'predict_and_compile_{model_name}'] = t_diff
      logging.info('Total JAX model %s predict time (includes compilation time, see --benchmark): %.0f?', model_name, t_diff)

      if benchmark:
        t_0 = time.time()
        model_runner.predict(processed_feature_dict, random_seed=model_random_seed)
        timings[f'predict_benchmark_{model_name}'] = time.time() -t_0

      # Get mean pLDDT confidence metric.
      plddt = prediction_result['plddt']
      plddts[model_name] = np.mean(plddt) # it looks like this was removed at some point 
      ranking_confidences[model_name] = prediction_result['ranking_confidence']

      # Save the model outputs.

      structure_id =  os.path.basename(structure_dir)
      result_output_path = os.path.join(structure_output_dir, f'result_{structure_id}_{model_name}.pkl') # Add structure number to this also 
      with open(result_output_path, 'wb') as f:
        pickle.dump(prediction_result, f, protocol=4) # We are going to need to reload this

      # Add the predicted LDDT in the b-factor column.
      # Note that higher predicted LDDT value means higher model confidence.
      plddt_b_factors = np.repeat(plddt[:, None], residue_constants.atom_type_num, axis=-1)
      unrelaxed_protein = protein.from_prediction(
          features=processed_feature_dict,
          result=prediction_result,
          b_factors=plddt_b_factors,
          remove_leading_feature_dimension=not model_runner.multimer_mode)


      unrelaxed_pdbs[model_name] = protein.to_pdb(unrelaxed_protein)
      unrelaxed_pdb_path = os.path.join(structure_output_dir, f'unrelaxed_{structure_id}_{model_name}.pdb') # Add structure number to this also 
      with open(unrelaxed_pdb_path, 'w') as f:
        f.write(protein.to_pdb(unrelaxed_protein))

    # Relax the prediction.
    # if :
    if amber_relaxer and FLAGS.run_relax:
      t_0 = time.time()
      relaxed_pdb_str, _, _ = amber_relaxer.process(prot=unrelaxed_protein)
      timings[f'relax_{model_name}'] = time.time() - t_0

      relaxed_pdbs[model_name] = relaxed_pdb_str

      # Save the relaxed PDB.
      relaxed_output_path = os.path.join(structure_output_dir, f'relaxed_{structure_id}_{model_name}.pdb') # Add structure number to this also 
      with open(relaxed_output_path, 'w') as f:
        f.write(relaxed_pdb_str)

# End of model generation

  if FLAGS.only_run_cleanup == True: 
    timings = {} 
    relaxed_pdbs = {}
    for model_name, model_runner in model_runners.items():

      result_output_path = os.path.join(structure_output_dir, f'result_{structure_id}_{model_name}.pkl') # Add structure number to this also.

      with open(result_output_path, 'rb') as f:
        prediction_result = pickle.load(f) 
      
      plddt = prediction_result['plddt']
      plddts[model_name] = np.mean(plddt) # it looks like this was removed at some point 
      ranking_confidences[model_name] = prediction_result['ranking_confidence']
  
  ranked_order = []
  for idx, (model_name, _) in enumerate(
      sorted(ranking_confidences.items(), key=lambda x: x[1], reverse=True)):
    ranked_order.append(model_name)
    ranked_output_path = os.path.join(structure_output_dir, f'ranked_{idx}.pdb') # Add structure number to this also 
    with open(ranked_output_path, 'w') as f:
      if amber_relaxer and FLAGS.run_relax:
        f.write(relaxed_pdbs[model_name])
      else:
        f.write(unrelaxed_pdbs[model_name])

  ranking_output_path = os.path.join(structure_output_dir, 'ranking_debug.json')
  with open(ranking_output_path, 'w') as f:
    label = 'iptm+ptm' if 'iptm' in prediction_result else 'plddts'
    f.write(json.dumps({label: ranking_confidences, 'order': ranked_order}, indent=4))

  logging.info('Final timings for %s: %s', fasta_name, timings)

  timings_output_path = os.path.join(structure_output_dir, 'timings.json')
  with open(timings_output_path, 'w') as f:
    f.write(json.dumps(timings, indent=4))

def main(argv):
  if len(argv) > 1:
    raise app.UsageError('Too many command-line arguments.')

  for tool_name in ('jackhmmer', 'hhblits', 'hhsearch', 'hmmsearch', 'hmmbuild', 'kalign'):
    if not FLAGS[f'{tool_name}_binary_path'].value:
      raise ValueError(f'Could not find path to the "{tool_name}" binary. Make sure it is installed on your system.')

  use_small_bfd = FLAGS.db_preset == 'reduced_dbs'

  # Check flags checks postive or negative values when we really only care about checking that it is set when we need it. We add this little if checks in order to get around changing the default behavior of this
  if use_small_bfd:
    _check_flag('small_bfd_database_path', 'db_preset', should_be_set=use_small_bfd)

  if not use_small_bfd: 
    _check_flag('uniclust30_database_path', 'db_preset', should_be_set=not use_small_bfd)
    _check_flag('bfd_database_path', 'db_preset', should_be_set=not use_small_bfd)

  run_multimer_system = 'multimer' in FLAGS.model_preset

  if not  run_multimer_system: 
    _check_flag('pdb70_database_path', 'model_preset', should_be_set=not run_multimer_system)

  if run_multimer_system:
    _check_flag('pdb_seqres_database_path', 'model_preset', should_be_set=run_multimer_system)
    _check_flag('uniprot_database_path', 'model_preset', should_be_set=run_multimer_system)

  if FLAGS.model_preset == 'monomer_casp14':
    num_ensemble = 8
  else:
    num_ensemble = 1

  # Check for duplicate FASTA file names.
  # fasta_names = [pathlib.Path(p).stem for p in FLAGS.fasta_paths]
  if len(FLAGS.fasta_names) != len(set(FLAGS.fasta_names)):
    raise ValueError('All FASTA paths must have a unique basename.')

  # Check that is_prokaryote_list has same number of elements as fasta_paths,
  # and convert to bool.
  if FLAGS.is_prokaryote_list:
    if len(FLAGS.is_prokaryote_list) != len(FLAGS.fasta_names):
      raise ValueError('--is_prokaryote_list must either be omitted or match length of --fasta_paths.')
    is_prokaryote_list = []
    for s in FLAGS.is_prokaryote_list:
      if s in ('true', 'false'):
        is_prokaryote_list.append(s == 'true')
      else:
        raise ValueError('--is_prokaryote_list must contain comma separated true or false values.')
  else:  # Default is_prokaryote to False.
    is_prokaryote_list = [False] * len(FLAGS.fasta_names)

  if run_multimer_system:
    template_searcher = hmmsearch.Hmmsearch(binary_path=FLAGS.hmmsearch_binary_path, hmmbuild_binary_path=FLAGS.hmmbuild_binary_path, database_path=FLAGS.pdb_seqres_database_path)
    template_featurizer = templates.HmmsearchHitFeaturizer(
        mmcif_dir=FLAGS.template_mmcif_dir,
        max_template_date=FLAGS.max_template_date,
        max_hits=MAX_TEMPLATE_HITS,
        kalign_binary_path=FLAGS.kalign_binary_path,
        release_dates_path=None,
        obsolete_pdbs_path=FLAGS.obsolete_pdbs_path)
  else:
    template_searcher = hhsearch.HHSearch( binary_path=FLAGS.hhsearch_binary_path, databases=[FLAGS.pdb70_database_path])
    template_featurizer = templates.HhsearchHitFeaturizer(
        mmcif_dir=FLAGS.template_mmcif_dir,
        max_template_date=FLAGS.max_template_date,
        max_hits=MAX_TEMPLATE_HITS,
        kalign_binary_path=FLAGS.kalign_binary_path,
        release_dates_path=None,
        obsolete_pdbs_path=FLAGS.obsolete_pdbs_path)


#This is one place where I need to set this 
  monomer_data_pipeline = pipeline.DataPipeline(
      jackhmmer_binary_path=FLAGS.jackhmmer_binary_path,
      hhblits_binary_path=FLAGS.hhblits_binary_path,
      uniref90_database_path=FLAGS.uniref90_database_path,
      mgnify_database_path=FLAGS.mgnify_database_path,
      bfd_database_path=FLAGS.bfd_database_path,
      uniclust30_database_path=FLAGS.uniclust30_database_path,
      small_bfd_database_path=FLAGS.small_bfd_database_path,
      template_searcher=template_searcher,
      template_featurizer=template_featurizer,
      use_small_bfd=use_small_bfd,
      mgnify_max_hits=FLAGS.mgnify_max_hits,
      uniref_max_hits=FLAGS.uniref_max_hits,
      use_precomputed_msas=FLAGS.use_precomputed_msas,
      )

# flags.DEFINE_integer("mgnify_max_hits", defvalues.get("mgnify_max_hits", 501), "How many hits should be kept from the mgnify clusters?")
# flags.DEFINE_integer("uniref_max_hits", defvalues.get("uniref_max_hits", 10000), "How many hits should be kept from the uniref hits?")


# This is one place to set this 
  if run_multimer_system: 
    data_pipeline = pipeline_multimer.DataPipeline(
        monomer_data_pipeline=monomer_data_pipeline,
        jackhmmer_binary_path=FLAGS.jackhmmer_binary_path,
        uniprot_database_path=FLAGS.uniprot_database_path,
        max_uniprot_hits=FLAGS.max_uniprot_hits,
        use_precomputed_msas=FLAGS.use_precomputed_msas)
  else:
    data_pipeline = monomer_data_pipeline

  model_runners = {}

  # This fixes the flag so that you are able to run a subset of the models again
  if FLAGS.model_names == False:
    model_names = config.MODEL_PRESETS[FLAGS.model_preset]
  else:
    model_names = FLAGS.model_names 

    for i, ele in enumerate(model_names):
      if FLAGS.model_preset.split("_")[-1] in ["ptm", "multimer"]:
        model_names[i] = ele + "_" + FLAGS.model_preset.split("_")[-1]

  for model_name in model_names:
    model_config = config.model_config(model_name)

    if run_multimer_system:
      model_config.model.num_ensemble_eval = num_ensemble
    else:
      model_config.data.eval.num_ensemble = num_ensemble

    #This path might be different for the multimer system
    if FLAGS.num_recycle != None:
      try:
        model_config.model.num_recycle = FLAGS.num_recycle
      except: 
        pass
      try:
        model_config.data.common.num_recycle  = FLAGS.num_recycle
      except: 
        pass

    model_params = data.get_model_haiku_params(model_name=model_name, data_dir=FLAGS.data_dir)

    #model_runner, reps  = model.RunModel(model_config, model_params)
    model_runner = model.RunModel(model_config, model_params)
    model_runners[model_name] = model_runner

  logging.info('Have %d models: %s', len(model_runners), list(model_runners.keys())) 

  amber_relaxer = relax.AmberRelaxation(
      max_iterations=RELAX_MAX_ITERATIONS,
      tolerance=RELAX_ENERGY_TOLERANCE,
      stiffness=RELAX_STIFFNESS,
      exclude_residues=RELAX_EXCLUDE_RESIDUES,
      max_outer_iterations=RELAX_MAX_OUTER_ITERATIONS)

  # Predict structure for each of the sequences.
  # for i, fasta_name in enumerate(FLAGS.fasta_paths):
  for i, fasta_name in enumerate(FLAGS.fasta_names):

    fasta_path = os.path.join(FLAGS.fasta_path, fasta_name)
    is_prokaryote = is_prokaryote_list[i] if run_multimer_system else None

    for structure_index in range(FLAGS.num_structures):
      random_seed = FLAGS.random_seed + structure_index if FLAGS.random_seed is not None else random.randrange(sys.maxsize // len(model_names))+structure_index
      logging.info('Using random seed %d for the data pipeline', random_seed)

      # check what structure directories exist...

      structure_dir=f'structure_{structure_index}'

      predict_structure(
          fasta_path=fasta_path,
          fasta_name=fasta_name,
          output_dir_base=FLAGS.output_dir,
          data_pipeline=data_pipeline,
          model_runners=model_runners,
          amber_relaxer=amber_relaxer,
          benchmark=FLAGS.benchmark,
          random_seed=random_seed,
          job_name=FLAGS.job_name,
          overwrite=FLAGS.overwrite,
          structure_dir=structure_dir,
          is_prokaryote=is_prokaryote
      )

if __name__ == '__main__':
  flags.mark_flags_as_required([
      'fasta_path',
      'model_names',
      'fasta_names',
      'output_dir',
      'data_dir',
      'uniref90_database_path',
      'mgnify_database_path',
      'template_mmcif_dir',
      'max_template_date',
      'obsolete_pdbs_path',
  ])

  app.run(main)
