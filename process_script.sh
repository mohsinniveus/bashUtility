#!/bin/sh

# Author : Mohsin Khan
# Copyright (c) niveussolutions.com
# Script follows here: This script process individual file
echo "Processing the file *************************************************************** starts here"
echo "$1"

while read -r line; do
    path_str="$line"
    echo "$path_str" "$2"
done < "$1"

echo "Processing the file *************************************************************** ends here"