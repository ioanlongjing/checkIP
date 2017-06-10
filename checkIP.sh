#!/bin/bash

IPFile=host1.txt

cat $IPFile | while read line
do
	ping -c1 -W1 $line 
	if [ "$?" -eq "0" ]; then
		echo "$line is up"
	else
		echo "$line" >> failIP.txt
		echo "============================"
		# To IP to fail.
		echo "This IP was down"
		cat failIP.txt 
	fi
done
