#!/bin/bash

disk=$(df -h | awk '{print$5}' | sed -n 5p)
ram=$(free -h | grep Mem | awk '{print $3}')
ip=$(curl ifconfig.me -s)

echo "current disk usage is $disk"
echo -e "\ncurrent used ram is $ram\n"

echo "The current Disk usage and Ram usage of $ip is $disk and $ram respectively." | mail -s "Disk usage and Ram usage" jayaramnayak227b@gmail.com
