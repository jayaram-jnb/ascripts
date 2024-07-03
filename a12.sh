#!/bin/bash

if [ $# -eq 0 ]
then 
	echo "Enter the Arguments while running the script"
exit 01
fi

echo "The Integer arguments are as follows:"

for arg in $*
do

	if [[ $arg =~ ^[0-9]+$ ]]
then
	echo $arg
fi
	done
