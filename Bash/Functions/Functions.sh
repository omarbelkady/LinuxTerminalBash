#! /data/data/com.termux/files/usr/bin/bash

function thePasc56837()
{
	echo "Apparently 2526 aka 6342_56837 or 2-56837 is in awe of 557"
}

#How to Call A function
thePasc56837

#I will create a function that takes 5 arguments
function functionPrint()
{
	echo $1 $2 $3 $4 $5
}

functionPrint 2526 47 26 557 56837

#Checks if the function does what it is doing

function functionChecking()
{
	#returnAValue is what's known as a local variable its scope is only within this function
	returnAValue="I was told that 2-56837 is in awe of 557"
	echo "$returnAValue"
}

returnAValue="IsAPasc56837"
echo $returnAValue

#returnAValue is updated but not within the function because we updated it globally not locally within the function
functionChecking
echo $returnAValue
