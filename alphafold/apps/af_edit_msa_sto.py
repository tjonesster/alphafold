#!/usr/bin/env python
from dataclasses import dataclass
from enum import Enum

class field_abb(Enum):
    GF = "GF"
    GS = "GS"
    GR = "GR"
    GC = "GC"



'''
Background on this file type 

Each line starts with a # sign  followed by a set of characters that 


Field types:
#=GF - general field 
#=GS
#=GR 
#=GC 

from wikipedia    
#=GF
Compulsory fields:
   ------------------
   AC   Accession number:           Accession number in form PFxxxxx (Pfam) or RFxxxxx (Rfam).
   ID   Identification:             One word name for family.
   DE   Definition:                 Short description of family.
   AU   Author:                     Authors of the entry.
   SE   Source of seed:             The source suggesting the seed members belong to one family.
   SS   Source of structure:        The source (prediction or publication) of the consensus RNA secondary structure used by Rfam.
   BM   Build method:               Command line used to generate the model
   SM   Search method:              Command line used to perform the search
   GA   Gathering threshold:        Search threshold to build the full alignment.
   TC   Trusted Cutoff:             Lowest sequence score (and domain score for Pfam) of match in the full alignment.
   NC   Noise Cutoff:               Highest sequence score (and domain score for Pfam) of match not in full alignment.
   TP   Type:                       Type of family -- presently Family, Domain, Motif or Repeat for Pfam.
                                                   -- a tree with roots Gene, Intron or Cis-reg for Rfam.
   SQ   Sequence:                   Number of sequences in alignment.

   Optional fields:
   ----------------
   DC   Database Comment:           Comment about database reference.
   DR   Database Reference:         Reference to external database.
   RC   Reference Comment:          Comment about literature reference.
   RN   Reference Number:           Reference Number.
   RM   Reference Medline:          Eight digit medline UI number.
   RT   Reference Title:            Reference Title.
   RA   Reference Author:           Reference Author
   RL   Reference Location:         Journal location.
   PI   Previous identifier:        Record of all previous ID lines.
   KW   Keywords:                   Keywords.
   CC   Comment:                    Comments.
   NE   Pfam accession:		    Indicates a nested domain.
   NL   Location:                   Location of nested domains - sequence ID, start and end of insert.
   WK   Wikipedia link:             Wikipedia page
   CL   Clan:                       Clan accession
   MB   Membership:                 Used for listing Clan membership

   For embedding trees:
   ----------------
   NH  New Hampshire                A tree in New Hampshire eXtended format.
   TN  Tree ID                      A unique identifier for the next tree.

   Other:
   ------
   FR False discovery Rate:         A method used to set the bit score threshold based on the ratio of 
                                    expected false positives to true positives. Floating point number between 0 and 1.
   CB Calibration method:           Command line used to calibrate the model (Rfam only, release 12.0 and later)


#=GS
i      Feature                    Description
      ---------------------      -----------
      AC <accession>             ACcession number
      DE <freetext>              DEscription
      DR <db>; <accession>;      Database Reference
      OS <organism>              Organism (species)
      OC <clade>                 Organism Classification (clade, etc.)
      LO <look>                  Look (Color, etc.)

#=GR
      Feature   Description            Markup letters
      -------   -----------            --------------
      SS        Secondary Structure    For RNA [.,;<>(){}[]AaBb.-_] --supports pseudoknot and further structure markup (see WUSS documentation) 
                                       For protein [HGIEBTSCX]
      SA        Surface Accessibility  [0-9X] 
                    (0=0%-10%; ...; 9=90%-100%)
      TM        TransMembrane          [Mio]
      PP        Posterior Probability  [0-9*] 
                    (0=0.00-0.05; 1=0.05-0.15; *=0.95-1.00)
      LI        LIgand binding         [*]
      AS        Active Site            [*]
     pAS        AS - Pfam predicted    [*]
     sAS        AS - from SwissProt    [*]
      IN        INtron (in or after)   [0-2]
 
     For RNA tertiary interactions:
     ------------------------------
     tWW       WC/WC        in trans   For basepairs: [<>AaBb...Zz]  For unpaired: [.]
     cWH       WC/Hoogsteen in cis
     cWS       WC/SugarEdge in cis
     tWS       WC/SugarEdge in trans
     notes: (1) {c,t}{W,H,S}{W,H,S} for general format. 
            (2) cWW is equivalent to SS.

#=GC
      Feature   Description            Description
      -------   -----------            --------------
      RF        ReFerence annotation   Often the consensus RNA or protein sequence is used as a reference
                                       Any non-gap character (e.g. x's) can indicate consensus/conserved/match columns
                                       .'s or -'s indicate insert columns
                                       ~'s indicate unaligned insertions
                                       Upper and lower case can be used to discriminate strong and weakly conserved 
                                       residues respectively
      MM        Model Mask             Indicates which columns in an alignment should be masked, such
                                       that the emission probabilities for match states corresponding to
                                       those columns will be the background distribution.




''' 

class msa_editor:
    def __init__(self):
        print("testing")


if __name__ == "__main__":

    field_abb("GF")

    print("not implemented")
