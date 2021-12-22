# Open chimera for 5MRC then execute following command:
# (i) remove solvent (ii) add hydrogens (iii) add symmetry units
from chimera import runCommand as rc
rc("open pdbs/5MRC.cif")
rc("delete solvent")
rc("delete ions")
rc("addh")
rc("write format pdb #0 particles/5MRC_rem-solvent_addh.pdb")
rc("stop")
