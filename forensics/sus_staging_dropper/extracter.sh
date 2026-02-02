#!/usr/bin/env bash

# This bash script extracts the flag from the challenge.txt file 
#

#Important consideration the commands might differ depending on the env
#If you have perl within your environment you can use this

if [ -f 'challenge.txt' ]; then

	decoded=$( grep -Po '-enc \K.*' challenge.txt | base64 -d )

	echo "${decoded}" > challenge_decoded.txt

	if [ -f 'challenge_decoded.txt' ]; then

		flag=$( grep -Po 'http:\/\/\K.*?(?=\/_evil)' challenge_decoded.txt )
		echo "${flag}" > flag.txt
		echo "Flag : ${flag}"
	else
		echo "Error: file: challenge_decoded.txt: NOT FOUND"
	fi

else
	echo "Error: file: challenge.txt: NOT FOUND"
fi

##IF YOU DON'T HAVE PEARL INSTALLED YOU CAN USE sed
## e.g 
## sed -n "s/^.*-enc //p" challenge.txt | base64 -d 
##
## OR YOU CAN USE awk
##e.g
## awk -F "-enc " '{print $2}' challenge.txt | base64 -d
