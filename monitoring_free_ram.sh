#!/bin/bash

#filtering out a free from free -h
FREESPACE=$(free -mt | grep 'Total' | awk '{print $4}')

#now applying a conditions
if [[ $FREESPACE -lt 200 ]]
then
        echo "WARNING!!! insufficent space in ram $FREESPACE MiB"
else
        echo "Your ram has sufficient space $FREESPACE MiB"
fi
