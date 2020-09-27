#! /data/data/com.termux/files/usr/bin/bash
echo "Here is how to print an operation in Bash"

#cloverlovesllpandc
num1=2568370568370557
num2=2632

echo $(( num1 + num2 ))

numa=727225
numb=27736259
echo $(( numa * numb ))
echo $(( numa / numb ))
echo $(( numa % numb ))

#Way Number 2 To do it
echo $(expr $numa + $numb)
echo $(expr $numa - $numb)
echo $(expr $numa / $numb)
echo $(expr $numa \* $numb)
echo $(expr $numa % $numb)
