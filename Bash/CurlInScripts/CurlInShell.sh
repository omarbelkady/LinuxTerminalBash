#! /data/data/com.termux/files/usr/bin/bash

url="http://www.ovh.net/files/1Mio.dat"
#O is not the same o
#curl ${url} -O

#-o stands for file option and right after it the name I want to give it
curl ${url} -o NewCurlFileToDwn

#Output file example
#curl ${url} > outputfile


