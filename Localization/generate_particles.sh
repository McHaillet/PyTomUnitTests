#!/bin/bash
# execute from PyTomUnitTests/Localization

echo Provide the path to pytom:
read pytom_path

pdbs=("4V94_fixed.pdb" "4CR2.pdb" "1QVR.pdb" "1BXN.pdb" "3CF3.pdb" "1U6G.pdb" "3D2F.pdb" "2CG9.pdb" "3H84.pdb" "3GL1.pdb" "3QM1.pdb" "1S3X.pdb" "5MRC.cif")

for pdb in ${pdbs[@]}
do
	pytom "$pytom_path/pytom/simulation/potential.py" \
		-f "pdbs/$pdb" \
		-d particles \
		-s 5 \
		-n 2 \
		-x masking \
		-a \
		-v 300 \
		--cores 10 
done
