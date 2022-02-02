#!/bin/bash -x

read -p "enter the number to calculate factorial " n
fact=1
for (( i=n; i>0; i-- ))
do
	fact=$(($fact * $i))
done
	echo the factorial of $n is $fact
