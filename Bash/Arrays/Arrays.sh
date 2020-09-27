#! /data/data/com.termux/files/usr/bin/bash
#Unlimited inputs

arguments=("$@")

#echo ${arguments[0]} ${arguments[1]} ${arguments[2]} ${arguments[3]} ${arguments[4]}

#Unlimited Inps Correctly
#echo $@

favlangs=('Pascal', 'Assembly', 'LLP', 'Java','CS375FanBoy', 'Pintos')

#Removes index 3 
unset favlangs[3]

#Prints the entire array
echo "${favlangs[@]}"

#Prints the indexes of the array and notice index 3 is removed
echo "${!favlangs[@]}"

#Prints the number of elements in the array aka len of the original not taking into consideration the removed element
echo "${#favlangs[@]}"


#I replace the removed element index 3 with Machine Language
favlangs[3]="Machine Language,"
echo "${favlangs[@]}"
