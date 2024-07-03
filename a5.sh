#!/bin/bash

dir=/home/ec2-user/j4

f=$(find $dir -type f -mtime +28 -print0 | xargs -0 du -b | sort -nr | awk '{print $2}')

if [ -z "$f" ]; then
    echo "No files older than 28 days found in $dir."
    exit 0
fi

for file in $f; do
    echo "Deleting $file"
    rm -f "$file"
done

echo "Delete operation complete."
