#!/bin/bash -x

read -p "ente the number " n
numOfFact=0
for (( i=1; i<=n; i++ ))
do
	x=$((n%i))
	if [ $x = 0 ]
	then
		numOfFact=$(($numOfFact+1))
		if [ $numOfFact -gt 2 ]
		then break
		fi
	fi
done
	if [ $numOfFact -le 2 ]
	then
		echo "$n is a Prime no."
	else
		echo "$n is not a Prime no."
	fi
