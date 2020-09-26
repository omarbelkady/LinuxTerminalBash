#! /data/data/com.termux/files/usr/bin/bash

#number sum of 727225 is 25

for (( i=0; i<=10; i++ ))
do
	#skips 3 and 7
	if [ $i -eq 3 ] || [ $i -eq 5 ]
	then
		echo "Definitely a 727225 56837"
		i=$((i+1))
		continue
	fi
	echo $i
done

