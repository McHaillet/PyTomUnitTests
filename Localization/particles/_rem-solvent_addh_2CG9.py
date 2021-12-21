# Open chimera for 2CG9 then execute following command:
# (i) remove solvent (ii) add hydrogens (iii) add symmetry units
from chimera import runCommand as rc
rc("open pdbs/2CG9.pdb")
rc("delete solvent")
rc("delete ions")
rc("addh")
rc("write format pdb #0 particles/2CG9_rem-solvent_addh.pdb")
rc("stop")
