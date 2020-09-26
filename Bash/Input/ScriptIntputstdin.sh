#! /data/data/com.termux/files/usr/bin/bash

while read the_line
do
	echo "$the_line"
done < "${1:-Hello.txt}"
