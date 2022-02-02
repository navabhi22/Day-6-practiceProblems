#!/bin/bash -x

read -p "enter the range  " a b
numOfFact=0

for (( i=a; i<=b; i++ ))
do	numOfFact=0
	for (( j=1; j<=i; j++ ))
	do
        	x=$((i%j))
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
                echo "$i is a Prime no."
        else
                echo "$i is not a Prime no."
        fi
done
