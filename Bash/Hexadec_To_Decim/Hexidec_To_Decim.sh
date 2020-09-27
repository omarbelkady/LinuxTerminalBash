#! /data/data/com.termux/files/usr/bin/bash

#Asking the user to input a Hexadecimal number of his choice
echo "Please enter a Hexdecimal number of your choice"
read Hex

echo -n "The fractional value of the hexadecimal $Hex is: "

echo "obase=10; ibase=16; $Hex" | bc



