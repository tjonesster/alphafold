.. tjonesster_alphafold documentation master file, created by
   sphinx-quickstart on Tue Jan 18 16:31:30 2022.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to tjonesster_alphafold's documentation!
================================================

.. toctree::
   :maxdepth: 2
   :caption: Contents:



Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`


Features that we added over the default options present within alphafold.

Things that still need to be documented:


apps directory 


plotting

limiting the number of sequences that are used when modeling.
The organization of the code: 






Things to build:
Using mmseqs2 instead of jackhmmer within the pipeline
an api backend for submitting jobs
A job scheduler
a3m updater
sto updater


Things from other publications that we should look into adding / discussing with the original author.
   command line option to add a ptm structure into the mix - I think colabfold might do this but I am not sure

   Avoid recompilation of the model like: ParaFold: Paralleling AlphaFold for Large-Scale Predictions 

   the ability to  back propagate to kick out sequences. https://doi.org/10.1101/2021.10.23.465204

   AlphaDesign is really just sequence optimization but we could easily build something similar. This is ultimately ... https://doi.org/10.1101/2021.10.11.463937 ...  https://www.nature.com/articles/s41586-021-04184-w




Features that may be worth implementing still. 