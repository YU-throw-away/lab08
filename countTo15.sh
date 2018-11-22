#!/bin/bash
for ((i=1;i<=15;i++)); 
do
	./setbits.sh $i
	sleep 2
done
