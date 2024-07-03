#!/bin/bash

echo "Enter a word:"
read word

line=${#word}
rev=""

while [ $line -gt 0 ]; do
    line=$((line-1))
    rev="$rev${word:line:1}"
done

echo "$rev"

