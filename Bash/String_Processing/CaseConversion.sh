#! /data/data/com.termux/files/usr/bin/bash
echo "Enter A String Of Text"
read string1
#this is similar to getline(C++), readline(C#), next(Java)

echo "Enter the 2nd String of Text "
read string2

#converting first letter of string to uppercase 968 727225 56837
echo ${string1^}

#converting string to all uppercase 968 27736259 56837 
echo ${string2^^}


