#!/bin/bash

# execute from PyTomUnitTests/Localization

echo Provide the path to pytom:
read pytom_path

vesicles=(5 6 7 8)
for v in ${vesicles[@]}
do	
	pytom "$pytom_path/pytom/simulation/membrane.py" \
		-r $v \
		-s 5 \
		-d particles \
		-m "$pytom_path/pytom/simulation/membrane_models/dppc128_dehydrated.pdb" \
		-v 300 \
		-x 4.5301 \
		--cores 10 
done

