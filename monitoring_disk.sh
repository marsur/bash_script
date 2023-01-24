#!/bin/bash


# sucasne vyuzitie
current_usage=$( df -h | grep '/dev/mapper/centos-root' | awk {'print $5'} )

# maximalne vyuzitie
max_usage=70%

if [ ${current_usage%?} -ge ${max_usage%?} ]

then 

echo "disk /root je preplneny" >> disk_monitor.txt ; date >> disk_monitor.txt

else 

echo "vsetko v poriadku. disk /root je ok" >> disk_monitor.txt ; date >> disk_monitor.txt

fi 


# https://tldp.org/LDP/abs/html/comparison-ops.html 
