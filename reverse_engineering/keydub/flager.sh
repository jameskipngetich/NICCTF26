#!/usr/bin/env bash


#this bash script extracts the flag and places it in a flag.txt file
if [ ! -f 'exploit.py' ]; then 
	echo "ERROR: file: exploit.py: not in working directory"

elif [ ! -f 'keyedup' ] && [ ! -x 'keyedup' ]; then
	echo "ERROR: file: keyedup: not in working directory OR no 'x' in file permissions"

else
	flag=$( python3 exploit.py | ./keyedup )
	
	echo "${flag}" > flag.txt
	echo "Flag: ${flag} "
fi
