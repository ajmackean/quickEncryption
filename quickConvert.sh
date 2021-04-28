#!/bin/bash
# simple script to convert file input to / from base64 

File=$1
input=0
while [ $input != 3 ]
do
       	printf "What would you like to do? \n1. Encode \n2. Decode \n3. Quit\n"
	read input
	if [ $input = 1 ]
	then 
		base64 $File > output
		cp output $File
		rm output
		input=3
	elif [ $input = 2 ]
	then 
		base64 --decode $File > output
	        cp output $File
     	        rm output	       
		input=3
	elif [ $input = 3 ]
	then 
		echo "Quitting the program"
	else 
		echo "Please make a valid selection"
	fi
done
