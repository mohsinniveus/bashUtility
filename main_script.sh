#!/bin/sh

# Author : Mohsin Khan
# Copyright (c) niveussolutions.com
# Script follows here: This is the main script - entry point


function wait_to_complete()
{
    wait $1
}


echo "Meta data processing ################################################################################################# starts here"
start=`date +%s`

CURR_DIR=`pwd`
filename="$CURR_DIR/inputdata/kylin_metadata.txt"
processdata="$CURR_DIR/processdata"
#echo $filename
#echo "" >>  $filename;  sed -i '/^$/d;$G'  $filename; sed -i '/^$/d;$G'  $filename

sed -i '' '$a\' $filename

cd processdata
split -l 5 "$filename"

cd ..

i=1
for fname in "$processdata"/*; do
    [ -e "$fname" ] || continue
    ./process_script.sh "$fname" $i &
    process_id=$!
    #wait_to_complete $process_id
    i=$((i+1))
done
wait

rm -rf $processdata/*

end=`date +%s`
runtime=$((end-start))
echo "Meta data processing ################################################################################################ ends here "$runtime