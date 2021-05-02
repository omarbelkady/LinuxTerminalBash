#!/bin/bash
echo "What Would You Like the Sudo User to have as a username?"
read fName
echo "You Will now be prompted to create A New Password"
sudo adduser $fName
