# Open chimera for 3GL1 then execute following command:
# (i) remove solvent (ii) add hydrogens (iii) add symmetry units
from chimera import runCommand as rc
rc("open pdbs/3GL1.pdb")
rc("delete solvent")
rc("delete ions")
rc("addh")
rc("write format pdb #0 particles/3GL1_rem-solvent_addh.pdb")
rc("stop")
