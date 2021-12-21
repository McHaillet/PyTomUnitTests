# Open chimera for 3H84 then execute following command:
# (i) remove solvent (ii) add hydrogens (iii) add symmetry units
from chimera import runCommand as rc
rc("open pdbs/3H84.pdb")
rc("delete solvent")
rc("delete ions")
rc("addh")
rc("sym group biomt")
rc("combine all modelId 10")
rc("write format pdb #10 particles/3H84_rem-solvent_sym_addh.pdb")
rc("stop")
