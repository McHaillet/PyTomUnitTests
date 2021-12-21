#!/usr/bin/bash

echo Provide the path to pytom:
read pytom_path

if [ "$1" != "" ]; then
  pytom $pytom_path/pytom/simulation/MicrographModeller.py $1
else
    echo "Please pass path to conf file (for example, /path/to/simulation.conf)"
fi

