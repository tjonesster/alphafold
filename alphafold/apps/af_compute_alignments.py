#!/usr/bin/env python

#import absl 
import os 

from absl import app, flags, logging

from alphafold.data import templates
from alphafold.data.tools import hhblits
from alphafold.data.tools import hhsearch
from alphafold.data.tools import hmmsearch
from alphafold.data.tools import jackhmmer

from alphafold import user_config


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


flags.DEFINE_string('output_dir', defvalues.get('output_dir', None), 'Path to a directory that will store the results.')


FLAGS = flags.FLAGS


# We really should not store this in both locations but I think that this is the fastest way to do this at the current point in time    
def run_msa_tool(msa_runner, input_fasta_path: str, msa_out_path: str, msa_format: str, use_precomputed_msas: bool, run_once: bool = False ) -> Mapping[str, Any]:
  """Runs an MSA tool, checking if output already exists first."""
  if not (use_precomputed_msas or run_once) or not os.path.exists(msa_out_path):
    result = msa_runner.query(input_fasta_path)[0]
    with open(msa_out_path, 'w') as f:
      f.write(result[msa_format])
  else:
    logging.warning('Reading MSA from file %s', msa_out_path)
    with open(msa_out_path, 'r') as f:
      result = {msa_format: f.read()}
  return result

# We really should not store this in both locations but I think that this is the fastest way to do this at the current point in time
def _make_chain_id_map(*, sequences: Sequence[str], descriptions: Sequence[str],) -> Mapping[str, _FastaChain]:
  """Makes a mapping from PDB-format chain ID to sequence and description."""
  if len(sequences) != len(descriptions):
    raise ValueError(f'sequences and descriptions must have equal length. Got {len(sequences)} != {len(descriptions)}.')
  if len(sequences) > protein.PDB_MAX_CHAINS:
    raise ValueError(f'Cannot process more chains than the PDB format supports. Got {len(sequences)} chains.')
  chain_id_map = {}
  for chain_id, sequence, description in zip(protein.PDB_CHAIN_IDS, sequences, descriptions):
    chain_id_map[chain_id] = _FastaChain(sequence=sequence, description=description)
  return chain_id_map


class run_alignment_tools():

    def __init__(jackhmmer_binary_path = None, 
        hhblits_binary_path = None, 
        output_dir = None, 
        uniref90_database_path = None, 
        mgnify_database_path = None, 
        bfd_database_path = None, 
        small_bfd_database_path = None, 
        pdb_seqres_database_path = None, 
        uniprot_database_path = None, 
        template_mmcif_dir = None, 
        uniclust30_database_path = None, 
        pdb70_database_path = None, 
        max_template_date = None, 
        obsolete_pdbs_path = None):

        self.jackhmmer_uniref90_runner = jackhmmer.Jackhmmer(binary_path=jackhmmer_binary_path, database_path=uniref90_database_path)
        self.jackhmmer_small_bfd_runner = jackhmmer.Jackhmmer(binary_path=jackhmmer_binary_path, database_path=small_bfd_database_path)
        self.hhblits_bfd_uniclust_runner = hhblits.HHBlits(binary_path=hhblits_binary_path, databases=[bfd_database_path, uniclust30_database_path])
        self.jackhmmer_mgnify_runner = jackhmmer.Jackhmmer(binary_path=jackhmmer_binary_path, database_path=mgnify_database_path)
        self._uniprot_msa_runner = jackhmmer.Jackhmmer(binary_path=jackhmmer_binary_path, database_path=uniprot_database_path)


    def process(mgnify: bool = True, uniref90: bool = True, small_bfd: bool = True, bfd: bool = True, uniprot: bool = True):
        # We don't need any of these retrun values 

        if uniref90:
            uniref90_out_path = os.path.join(msa_output_dir, 'uniref90_hits.sto')
            jackhmmer_uniref90_result = run_msa_tool(self.jackhmmer_uniref90_runner, input_fasta_path, uniref90_out_path, 'sto', self.use_precomputed_msas, run_once = self.run_once)

        if mgnify:
            mgnify_out_path = os.path.join(msa_output_dir, 'mgnify_hits.sto')
            jackhmmer_mgnify_result = run_msa_tool(self.jackhmmer_mgnify_runner, input_fasta_path, mgnify_out_path, 'sto', self.use_precomputed_msas,run_once = self.run_once)

        if small_bfd:
            bfd_out_path = os.path.join(msa_output_dir, 'small_bfd_hits.sto')
            jackhmmer_small_bfd_result = run_msa_tool(self.jackhmmer_small_bfd_runner, input_fasta_path, bfd_out_path, 'sto', self.use_precomputed_msas, run_once = self.run_once)

        if bfd: 
            bfd_out_path = os.path.join(msa_output_dir, 'bfd_uniclust_hits.a3m')
            hhblits_bfd_uniclust_result = run_msa_tool( self.hhblits_bfd_uniclust_runner, input_fasta_path, bfd_out_path, 'a3m', self.use_precomputed_msas, run_once = self.run_once)

        if uniprot:
            out_path = os.path.join(msa_output_dir, 'uniprot_hits.sto')
            junk = pipeline.run_msa_tool(self._uniprot_msa_runner, input_fasta_path, out_path, 'sto', self.use_precomputed_msas)



        return 1 


def main(argv):
    if len(argv) > 1:
        raise app.UsageError('Too many command-line arguments.')

    #create output directory
    os.path.join(FLAGS.output_dir, 'msas')

    # check if the sequences are already processed

    # FLAGS.uniref
    compute_all_alignments(jackhmmer_binary_path = FLAGS.jackhmmer_binary_path, hhblits_binary_path = FLAGS.hhblits_binary_path, output_dir =  flags.output_dir)

    # msa_output_dir




if __name__ == "__main__":
    print("testing")

    # flags.mark_flags_as_required([
    #   'fasta_path',
    #   'model_names',
    #   'fasta_names',
    #   'output_dir',
    #   'data_dir',
    #   'uniref90_database_path',
    #   'mgnify_database_path',
    #   'template_mmcif_dir',
    #   'max_template_date',
    #   'obsolete_pdbs_path',
    # ])

    app.run(main)