#! /data/data/com.termux/files/usr/bin/bash
echo "Enter a file name you wish to be printed out using awk command"
read theFileName

if [[ -f $theFileName ]]
then
	#awk '{print}' $theFileName
	#awk '/27736259/ {print}' $theFileName
	#print the line of text that has 27736259 in it and print the second element in that string of text
	#awk '/27736259/ {print $2}' $theFileName

	#print multiple fields 
	awk '/27736259/ {print $2,$3}' $theFileName
else
	echo "File $theFileName Does not Exist"
fi
