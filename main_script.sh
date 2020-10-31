#!/bin/sh

# Author : Mohsin Khan
# Copyright (c) niveussolutions.com
# Script follows here: This is the main script - entry point

echo "Meta data processing ################################################################################################# starts here"

filename="/Volumes/mohsindisk/development/devops/bashUtility/inputdata/kylin_metadata.txt"
processdata="/Volumes/mohsindisk/development/devops/bashUtility/processdata"

cd processdata
split -l 5 "$filename"

cd ..

for fname in "$processdata"/*; do
    [ -e "$fname" ] || continue
    source process_script.sh "$fname" &
done

echo "Meta data processing ################################################################################################ ends here"