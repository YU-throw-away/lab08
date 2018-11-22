#!/bin/bash

num=$1
#pretend I had 4 leds I'm missing the one on pin 1
#pin 2 is the big blue light
#pin 3 is the middle red light
#pin 0 is the green light
gpio write 2 0 #turning of all the lights before setting their new value
gpio write 3 0
gpio write 0 0 

if [ "$num" -eq "0" ] ; then
	echo "nothing should happen"
elif [ "$num" -eq "1" ] ; then
	# 1 is the same as 0001 in binary
	gpio write 2 1
elif [ "$num" -eq "2" ] ; then
	# 2 in binary 0010 
	gpio write 3 1	
elif [ "$num" -eq "3" ] ; then
	# 3 in binary 0011
	gpio write 2 1
	gpio write 3 1
elif [ "$num" -eq "4" ] ; then
	# 4 in binary 0100
	gpio write 0 1
elif [ "$num" -eq "5" ] ; then
	# 5 in binary 0101
	gpio write 0 1
	gpio write 2 1
elif [ "$num" -eq "6" ] ; then
	# 6 in binary 0110
	gpio write 0 1
	gpio write 3 1
elif [ "$num" -eq "7" ] ; then
	# 7 in binary 0111
	gpio write 2 1
	gpio write 3 1
	gpio write 0 1
elif [ "$num" -eq "8" ] ; then
	# 8 is binary 1000
	echo "nothing should happen" 
elif [ "$num" -eq "9" ] ; then
	# 9 in binary 1001
	gpio write 2 1
elif [ "$num" -eq "10" ] ; then
	#10 in binary 1010
	gpio write 3 1
elif [ "$num" -eq "11" ] ; then
	#11 in binary 1011
	gpio write 3 1
	gpio write 2 1
elif [ "$num" -eq "12" ] ; then
	#12 in binary 1100
	gpio write 0 1
elif [ "$num" -eq "13" ] ; then
	#13 in binary 1101
	gpio write 0 1
	gpio write 2 1
elif [ "$num" -eq "14" ] ; then
	#14 in binary 1110
	gpio write 0 1
	gpio write 3 1
elif [ "$num" -eq "15" ] ; then
	#15 in binary 1111
	gpio write 2 1
        gpio write 3 1
        gpio write 0 1
fi
