# Open chimera for 1U6G then execute following command:
# (i) remove solvent (ii) add hydrogens (iii) add symmetry units
from chimera import runCommand as rc
rc("open pdbs/1U6G.pdb")
rc("delete solvent")
rc("delete ions")
rc("addh")
rc("write format pdb #0 particles/1U6G_rem-solvent_addh.pdb")
rc("stop")
