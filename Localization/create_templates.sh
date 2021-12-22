#!/bin/bash

files=( "5MRC.cif" "4V94_fixed.pdb" "4CR2.pdb" "1QVR.pdb" "3CF3.pdb" "3D2F.pdb" "3H84.pdb" "1U6G.pdb" "2CG9.pdb" "1BXN.pdb" "3GL1.pdb" "3QM1.pdb" "1S3X.pdb" )
boxsize=( 42 38 38 30 26 24 22 22 20 20 16 14 12 )
radii=( "17.5" "14" "16" "11.5" "10" "9.5" "9" "8.5" "8" "7.5" "5.5" "5" "4" )

defocus="3.5"
px="10"
voltage="300"

for i in "${!files[@]}"; do
	pdb="${files[i]%.*}"
	create_mask.py -o templates/mask_${boxsize[i]}_${radii[i]}_2.mrc -b ${boxsize[i]} -r ${radii[i]} -s 2
	create_template.py -f pdbs/${files[i]} -d templates -o ${pdb}_${boxsize[i]}px_${px}A_${defocus}um.mrc -s 1.25 -b 8 --modify_structure --solvent_correction gaussian -c -z ${defocus} -v ${voltage} -l 20 -x ${boxsize[i]} --gpuID 0
done

