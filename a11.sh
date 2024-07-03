#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Arugment is required."
exit 1
fi

filename=$1

if [ ! -e $filename ]
then 
	echo "The file $filename is not found"
exit 1
fi

newname=$(echo "$filename" | tr '[:upper:]' '[:lower:]')

mv "$filename" "$newname"

echo "The file $filename is renamed to $newname." 
