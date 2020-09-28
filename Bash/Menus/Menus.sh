#! /data/data/com.termux/files/usr/bin/bash

select favlang in PASC MACHINELANG LLP IMPERATIVE C ASSEMBLY
do
	#echo "You have selected $favlang"
	case $favlang in 
	PASC)
		echo "Pascal Selected You're Fav Plang";;
	MACHINELANG)
		echo "Machine Language Selected";;
	LLP)
		echo "Wow 2526 56837 Low Level Programming So Much not to forget Assembly";;
	IMPERATIVE)
		echo "256837's FAV Programming Paradigm Selected";;
	C)
		echo "2526 Goto Plang because of how easy it is write code for him and his love for LLP";;
	ASSEMBLY)
		echo "2526 56837 This Because it so close to his first programming class he learned 2";;
	#This is the default case in a switch statement
	*)
		echo "ERROR Please select between 1..5"
	esac
done

