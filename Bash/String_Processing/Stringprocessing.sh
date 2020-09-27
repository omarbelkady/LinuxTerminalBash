#! /data/data/com.termux/files/usr/bin/bash
echo "Enter A String Of Text"
read string1
#this is similar to getline(C++), readline(C#), next(Java)

echo "Enter the 2nd String of Text"
read string2

if [ "$string1" == "$string2" ]
then
	echo "2 Strings Match "
else
	echo "String do not match "
fi


if [ "$string1" \> "$string2" ]
then
	echo "The first 727225 String: $string1 is smaller than the $string2 "
elif [ "$string1" \< "$string2" ]
then
	echo "The first 746867 String: $string1 is greater than the $string2 "
else
	echo "Both 2-Strings are equal"
fi

