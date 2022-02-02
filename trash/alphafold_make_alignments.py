#!/usr/bin/env python

from absl import app, flags, logging
import os
import shutil

from alphafold.data import pipeline, pipeline_multimer, templates
from alphafold.data.tools import hhblits, hhsearch, hmmsearch, jackhmmer
from alphafold.data import msa_identifiers
from alphafold.data import parsers
from alphafold.data import templates

from alphafold.user_config import CONFIG_RUN_ALPHAFOLD as defvalues 

#Cache Directory 
flags.DEFINE_string('msa_cache_directory', defvalues.get('msa_cache_directory', None), 'Path to the hmmsearch executable.')

#Binary path 
flags.DEFINE_string('hmmsearch_binary_path', defvalues.get('hmmsearch_binary_path', shutil.which('hmmsearch')), 'Path to the hmmsearch executable.')
flags.DEFINE_string('hmmbuild_binary_path', defvalues.get('hmmbuild',shutil.which('hmmbuild')), 'Path to the hmmbuild executable.')
flags.DEFINE_string('jackhmmer_binary_path', defvalues.get('jackhmmer_binary_path', shutil.which('jackhmmer')) , 'Path to the JackHMMER executable.')
flags.DEFINE_string('hhblits_binary_path', defvalues.get('hhblits_binary_path',shutil.which('hhblits')), 'Path to the HHblits executable.')
flags.DEFINE_string('kalign_binary_path', defvalues.get('kalign_binary_path', shutil.which('kalign')), 'Path to the Kalign executable.')
flags.DEFINE_string('hhsearch_binary_path', defvalues.get('hhsearch_binary_path', shutil.which('hhsearch')), 'Path to the HHsearch executable.')

#database path
flags.DEFINE_string('uniref90_database_path', defvalues.get('uniref90_database_path', None), 'Path to the Uniref90 database for use by JackHMMER.')
flags.DEFINE_string('mgnify_database_path', defvalues.get('mgnify_database_path', None), 'Path to the MGnify database for use by JackHMMER.')
flags.DEFINE_string('bfd_database_path', defvalues.get('bfd_database_path', None), "Path to the bfd database.")
flags.DEFINE_string('small_bfd_database_path', defvalues.get("small_bfd_database_path", None), "Path to small bfd database")
flags.DEFINE_string('pdb_seqres_database_path', defvalues.get('pdb_seqres_database_path', None), 'Path to the PDB seqres database for use by hmmsearch.')
flags.DEFINE_string('uniprot_database_path', defvalues.get('uniprot_database_path', None), 'Path to the Uniprot database for use by JackHMMer.')
flags.DEFINE_string('template_mmcif_dir', defvalues.get('template_mmcif_dir', None), 'Path to a directory with template mmCIF structures, each named <pdb_id>.cif')
flags.DEFINE_string('uniclust30_database_path', defvalues.get('uniclust30_database_path', None), 'Path to uniclust30.') flags.DEFINE_string("pdb70_database_path", defvalues.get("pdb70_database_path", None), "Path to the pdb70 directory")

# fasta
flags.DEFINE_list('fasta_names', defvalues.get('fasta_names', None), 'The names of the fasta files. They should be located in your output path.')
flags.DEFINE_string('fasta_path', defvalues.get('fasta_path', None), 'Path to the directory that contains the fastas.')

#reduced ? 
flags.DEFINE_enum('db_preset', defvalues.get('db_preset',None), ['full_dbs', 'reduced_dbs'], 'Choose preset MSA database configuration - smaller genetic database config (reduced_dbs) or full genetic database config  (full_dbs)')

def run_msa_tool(msa_runner, input_fasta_path: str, msa_out_path: str, msa_format: str, use_precomputed_msas: bool,) -> Mapping[str, Any]:
  """Runs an MSA tool, checking if output already exists first."""
  if not use_precomputed_msas or not os.path.exists(msa_out_path):
    result = msa_runner.query(input_fasta_path)[0]
    with open(msa_out_path, 'w') as f:
      f.write(result[msa_format])
  else:
    logging.warning('Reading MSA from file %s', msa_out_path)
    with open(msa_out_path, 'r') as f:
      result = {msa_format: f.read()}
  return result

def main(argv):
    if len(argv)>1:
        raise app.UsageError('Too many command-line arguments.')

    # argv...
    # FLAGS = flags.FLAGS

    use_small_bfd = FLAGS.db_preset == 'reduced_dbs'

    uniref90_out_path = os.path.join(msa_output_dir, 'uniref90_hits.sto')
    mgnify_out_path = os.path.join(msa_output_dir, 'mgnify_hits.sto') 
    pdb_templates_result = template_searcher.query(msa_for_templates) # I don't htink we need to handle this in the pipeline

    jackhmmer_uniref90_runner = jackhmmer.Jackhmmer(binary_path=jackhmmer_binary_path, database_path=uniref90_database_path)
    jackhmmer_small_bfd_runner = jackhmmer.Jackhmmer(binary_path=jackhmmer_binary_path, database_path=small_bfd_database_path)
    hhblits_bfd_uniclust_runner = hhblits.HHBlits(binary_path=hhblits_binary_path, databases=[bfd_database_path, uniclust30_database_path])
    uniprot_msa_runner = jackhmmer.Jackhmmer(binary_path=jackhmmer_binary_path, database_path=uniprot_database_path)

    jackhmmer_uniref90_result = run_msa_tool(jackhmmer_uniref90_runner, input_fasta_path, uniref90_out_path, 'sto', self.use_precomputed_msas)
    jackhmmer_mgnify_result = run_msa_tool(jackhmmer_mgnify_runner, input_fasta_path, mgnify_out_path, 'sto', self.use_precomputed_msas)
    jackhmmer_small_bfd_result = run_msa_tool(jackhmmer_small_bfd_runner, input_fasta_path, bfd_out_path, 'sto', self.use_precomputed_msas)

    hhblits_bfd_uniclust_result = run_msa_tool(hhblits_bfd_uniclust_runner, input_fasta_path, bfd_out_path, 'a3m', self.use_precomputed_msas)

    uniprot_result = pipeline.run_msa_tool( uniprot_msa_runner, input_fasta_path, out_path, 'sto', self.use_precomputed_msas)


    (uniprot_result,hhblits_bfd_uniclust_result, jackhmmer_mgnify_result, pdb_templates_result, jackhmmer_small_bfd_result, jackhmmer_uniref90_result)
    
    # if self.template_searcher.input_format == 'sto':
    #   pdb_templates_result = self.template_searcher.query(msa_for_templates)
    # elif self.template_searcher.input_format == 'a3m':
    #   uniref90_msa_as_a3m = parsers.convert_stockholm_to_a3m(msa_for_templates)
    #   pdb_templates_result = self.template_searcher.query(uniref90_msa_as_a3m)
    # else:
    #   raise ValueError('Unrecognized template input format: '
    #                    f'{self.template_searcher.input_format}')

    # pdb_hits_out_path = os.path.join(msa_output_dir, f'pdb_hits.{self.template_searcher.output_format}')

    # with open(pdb_hits_out_path, 'w') as f:
    #   f.write(pdb_templates_result)
    

    print("testing")
    # data_pipeline.process(input_fasta_path = fasta_path, msa_output_dir= msa_output_dir)

if __name__ =="__main__":
    print("Testing")
    # flags.mark_flags_as_required([

    # ])

    app.run(main)