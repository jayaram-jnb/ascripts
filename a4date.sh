#!/bin/bash

sd=/home/ec2-user/scripts

bd=/home/ec2-user/j2

date=$(date +"%d-%b-%Y--%H:%M:%S")

filename="backup__$date.tar.gz"

tar -czf "$bd/$filename" "$sd"

echo "The $filename is created successfully."
