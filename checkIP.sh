#!/bin/bash

IPFile=all.txt

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

# 把 ban ping 不到的 IP ( failIP.txt) 從 host1.txt 裡刪除導出成 

grep -v -f <(sed "s/\(.\+\)/^\1$/" failIP.txt) all.txt > filterIP.txt
# 或是這樣也可以
# comm -23 <(sort all.txt | uniq) <(sort known.txt)


