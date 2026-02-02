#!/usr/bin/env bash

# This is a bash script to obtain the flag of the challenge IndustrialEchoes1
# It gets the flag
# print it out
# store it in a flag.txt
#

if [ -f "xor_bruteforce.py" ]; then
	#echo "file: xor_bruteforce.py exists"
	flag=$(python3 xor_bruteforce.py | rev)
	echo ${flag}

	echo ${flag} > flag.txt
else
	echo "ERROR: file: xor_bruteforce.py doesnot exist"
fi
echo "done"
