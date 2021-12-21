# Open chimera for 1BXN then execute following command:
# (i) remove solvent (ii) add hydrogens (iii) add symmetry units
from chimera import runCommand as rc
rc("open pdbs/1BXN.pdb")
rc("delete solvent")
rc("delete ions")
rc("addh")
rc("sym group biomt")
rc("combine all modelId 10")
rc("write format pdb #10 particles/1BXN_rem-solvent_sym_addh.pdb")
rc("stop")
