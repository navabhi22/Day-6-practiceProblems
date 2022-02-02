#!/bin/bash  -x

read -p "enter the value of n " n

for (( i=0; i<=n; i++ ))
do
	x=$(( 2 ** i ))
	echo $x
done
