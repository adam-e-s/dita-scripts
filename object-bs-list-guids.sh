#!/usr/bin/bash

# SCRIPT -- BS-LIST-GUIDES version A.01
# SCRIPT -- was read_file_array-pass.sh

# DEV NOTE -- BASIC SCRIPT TO LIST THE SDL GUIDS IN A FILE

# reads from the $infile file and assigns to $MYARRAY

infile=$1

index=1
while read line ; do
	MYARRAY[$index]="$line"
	index=$(($index+1))
done < $infile

numlines=$index

# echo "Total lines in the file: ${numlines}"

# echo "List of GUIDs in $infile:"

for ((index=1; index<=numlines; index++))
do
	if [[ "${MYARRAY[index]}" == *"GUID-"* ]]; then
		string="${MYARRAY[index]}"
		guid="${string#*GUID-}"
		guid="${guid:0:36}"
		guid="GUID-${guid}"
		echo "${guid}"
	fi
done



# # #
