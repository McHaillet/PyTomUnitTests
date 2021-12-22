# Open chimera for 3D2F then execute following command:
# (i) remove solvent (ii) add hydrogens (iii) add symmetry units
from chimera import runCommand as rc
rc("open pdbs/3D2F.pdb")
rc("delete solvent")
rc("delete ions")
rc("addh")
rc("write format pdb #0 particles/3D2F_rem-solvent_addh.pdb")
rc("stop")
