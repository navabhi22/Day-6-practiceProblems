#!/bin/bash -x

read -p "enter the vaue of n " n
x=0
for (( i=1; i<=n; i++ ))
do
	echo $x $i | awk '{-v fact=$1 + (1/$2)}'
	echo $fact
done
