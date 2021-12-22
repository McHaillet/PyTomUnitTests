# Open chimera for 4CR2 then execute following command:
# (i) remove solvent (ii) add hydrogens (iii) add symmetry units
from chimera import runCommand as rc
rc("open pdbs/4CR2.pdb")
rc("delete solvent")
rc("delete ions")
rc("addh")
rc("write format pdb #0 particles/4CR2_rem-solvent_addh.pdb")
rc("stop")
