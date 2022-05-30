#!/bin/sh

#SBATCH --partition=production
#SBATCH --mail-user=taylor.l.jones.1@vanderbilt.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --mem=24G
#SBATCH --time=4:00:00
#SBATCH --job-name=af2_cpu-test
#SBATCH --output=af2_cpu-test.log


#/home/jonestl5/miniconda3/bin/conda
export ALPHAFOLD_ROOT=~/dorsdir/alphafold

source /home/jonestl5/miniconda3/etc/profile.d/conda.sh

/home/jonestl5/miniconda3/bin/conda create -n af2_cpu -y python=3.9.7

#/home/jonestl5/miniconda3/bin/conda activate af2_3
source /home/jonestl5/miniconda3/bin/activate af2_cpu

/home/jonestl5/miniconda3/bin/conda install -y absl-py=1.0.0

pip3 install jax[cpu]

chmod 755 /homea/jonestl5/miniconda3/envs/af2_cpu/pkgs/cuda-toolkit # FIX THE PERMISSIONS ON THE cuda-toolkit DIRECTORY! # This was found by Jarrod 
/home/jonestl5/miniconda3/bin/conda install -y -c conda-forge -c bioconda hmmer=3.3.2 hhsuite kalign2
/home/jonestl5/miniconda3/bin/conda install -y -c conda-forge openmm=7.5.1 
/home/jonestl5/miniconda3/bin/conda install -y -c bioconda biopython=1.78
/home/jonestl5/miniconda3/bin/conda install -c -y conda-forge chex=0.0.7 dm-haiku=0.0.4 dm-tree=0.1.5 immutabledict==2.0.0
/home/jonestl5/miniconda3/bin/conda install -y ml_collections==0.1.1
/home/jonestl5/miniconda3/bin/conda install -c -y conda-forge tzdata
# This should already be handled by jax installation
#/home/jonestl5/miniconda3/bin/conda install -y numpy # this should already be installed by this point in the installation
#/home/jonestl5/miniconda3/bin/conda install -y scipy==1.7.1

cd pdbfixer
git checkout 6c59d383f99be3f2d20dd4b30fb216fab75a1449
pip3 install .

cd $ALPHAFOLD_ROOT
pip3 install --upgrade pip
pip3 install -r requirements.txt
#pip3 install --upgrade jax==0.2.25 jaxlib==0.1.69+cuda111 -f https://storage.googleapis.com/jax-releases/jax_releases.html



wget -q -P $ALPHAFOLD_ROOT/alphafold/common/ https://git.scicore.unibas.ch/schwede/openstructure/-/raw/7102c63615b64735c4941278d92b554ec94415f8/modules/mol/alg/src/stereo_chemical_props.txt
work_path=$ALPHAFOLD_ROOT
a=$(which python)
cd $(dirname $(dirname $a))/lib/python3.8/site-packages
patch -p0 < /home/jonestl5/dorsdir/alphafold/docker/openmm.patch -f


