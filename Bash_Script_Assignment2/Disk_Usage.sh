#!/usr/bin/bash

# This script is used to display the disk usage of the files in the directory
# The script takes in two arguments, the first argument is the directory and the second argument is the number of entries to be displayed


#All files and directory within the specified directory be listed out
if [[ $1 == '-d' ]]; then

all_files=true
shift 1

fi
#should return the top 5 directories with respect to disk usage in the /var directory
if [[ $1 == '-n' && $2=~^[0-9]+$ ]]; then  

    entries=$2
    shift 2
else
    entries=8
fi


directory=$1

if [[ $all_files = true ]]; then

sudo du -h  $1 | sort -rh | head -$entries

else

sudo du -h --max-depth=1 $1 | sort -rh | head -$entries
fi

