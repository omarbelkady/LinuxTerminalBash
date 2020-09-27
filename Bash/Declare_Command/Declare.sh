#! /data/data/com.termux/files/usr/bin/bash

#-r means read only
declare -r pwdfile=/etc/password

echo $pwdfile

#If I were to echo it it will error because we initialized the variable as read only
pwdfile=/etc/nelanisaCS375fanboy.txt

