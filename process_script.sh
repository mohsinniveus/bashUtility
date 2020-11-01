#!/bin/sh

# Author : Mohsin Khan
# Copyright (c) niveussolutions.com
# Script follows here: This script process individual file
echo "Processing the file *************************************************************** starts here"
echo "$1"
start=`date +%s`

while read -r line; do
    path_str="$line"
    echo "$path_str" "$2"
    
    #rtime=$(($RANDOM%10))
    #echo "sleeping for $rtime"
    #sleep "${rtime}s"
    
    #sleep 10s
done < "$1"

end=`date +%s`
runtime=$((end-start))
echo "Processing the file *************************************************************** ends here ---- "$runtime