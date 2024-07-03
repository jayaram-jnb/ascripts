#!/bin/bash

if [ $# -gt 0 ]
then
        for ((i=$#; i>0; i--))
        do
echo "${!i}"
done
        else
        echo "Enter the arguments with the shell script"
fi
