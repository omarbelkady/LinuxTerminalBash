#! /data/data/com.termux/files/usr/bin/bash
echo "Enter A String Of Text"
read string1
#this is similar to getline(C++), readline(C#), next(Java)

echo "Enter the 2nd String of Text"
read string2

c=$string1$string2

echo $c
