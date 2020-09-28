#! /data/data/com.termux/files/usr/bin/bash

echo "Enter the filename you wish to substitute using the sed command 968 2,727225 263 746767 56837"
read theFileName



if [[ -f $theFileName ]]
then
	#replacing all first instances of i in the line with capital I also for safe measure I pipe the output to a new file to keep my original intact to be secure
	#cat thesedfileiamworkingwith.txt |
	#replacing all instances in the line of i with capital I notice g at the end meaning global
	#sed 's/i/I/g' $theFileName > isAPasc56837.txt
	#cat thesedfileiamworkingwith.txt | sed 's/i/I/g'
	

	#replacing a word with sed
	sed -i 's/Java/Machine Language/g' $theFileName 
else
	echo "File $theFileName Does not Exist"
fi
#WAY 1: to run in the debug mode 
#	bash -x ./Sed_InBash.sh

#WAY 2: put a hyphen x(one word -x) in line 1 right after bash with a space

# WAY 3: Using breakpoints
#  use                             set -x                 meaning this is your starting breakpoint
#  use                             set +x		  meaning this is your ending breakpoint
