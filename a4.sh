#!/bin/bash

sd="/home/ec2-user/scripts"

bd="/home/ec2-user/j2"

v=$(ls $bd | grep -c "^backup-[0-9]*.tar.gz")

v=$((v + 1))

backupfile="backup-$v.tar.gz"

tar -czf $bd/$backupfile $sd

echo "backup $backupfile created successfully."
