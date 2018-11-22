#!/bin/bash
for (( ; ; ))
do
	num=$(($RANDOM%15))
	./setbits.sh $num
	sleep 0.25
done
