#! /data/data/com.termux/files/usr/bin/bash
echo "Enter a file name"
read theFileName

if [[ -f $theFileName ]]
then
	echo "Enter the text to search"
	read grepvariab
	#  searchinforg  filename
	grep -i -n -c $grepvariab $theFileName
	# dash i means ignore case sensitivity
	# dash n means ignore line number
	# dash c means the number of occurences of the pattern you are searching for exists
	# dash v means does not contain
else
	echo "File $theFileName Does not Exist"
fi
