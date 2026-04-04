#!/bin/bash

#here the command for free disk
FU=$(df -h | grep 'nvme0n1p16' | awk '{print $5}' | tr -d %)

#mail id variable
TO="naveenchhetri985@gmail.com"
#condition to apply 
if [[ $FU -gt 19 ]]
then
	echo "WARNING!! your disk space is running low... $FU% Crossed" | mail -s "Monitoring Disk Usage percentage" $TO
else
	echo "ALL GOOD"
fi

