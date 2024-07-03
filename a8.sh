#!/bin/bash

file="$1"

if [ -f "$file" ]
then

while read line 
do
	text+=("$line")
done < $file

for ((i=${#text[@]}-1; i>=0; i--))
do
	echo "${text[i]}"
done

else
     echo "enter the arguments"
exit 0 
fi 
