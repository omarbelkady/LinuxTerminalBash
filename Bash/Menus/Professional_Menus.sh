#! /data/data/com.termux/files/usr/bin/bash


echo "Press any key to continue"

while [ true ]
do
	read -t 3 -n 1
if [ $? = 0 ]
then
	echo "You have terminated the script 968 2-56837"
	exit;
else
	echo "Awaiting for the user to press a key"
fi

done
