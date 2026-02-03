#!/usr/bin/env bash


#this bash script extracts the flag and places it in a flag.txt file

if [ -f 'exploit.py' ] && [ -f 'keyedup' ]; then

	flag=$( python3 exploit.py | ./keyedup )
	
	echo "${flag}" > flag.txt
	echo "Flag: ${flag} "
else
	echo "ERROR: file: keydup: not in working directory"
	echo "ERROR: file: exploit.py: not in working directory"
fi
