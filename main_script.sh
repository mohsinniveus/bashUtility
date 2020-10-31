#!/bin/sh

# Author : Mohsin Khan
# Copyright (c) niveussolutions.com
# Script follows here: This is the main script - entry point
echo "Meta data processing ################################################################################################# starts here"

filename="../inputdata/kylin_metadata.txt"
processdata="./processdata"

cd processdata
split -l 5 "$filename"

cd ..

i=1
for fname in "$processdata"/*; do
    [ -e "$fname" ] || continue
    ./process_script.sh "$fname" $i
    i=$((i+1))
done

echo "Meta data processing ################################################################################################ ends here"