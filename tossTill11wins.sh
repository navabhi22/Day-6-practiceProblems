#!/bin/bash -x

X=0
y=0
while [[ $x -le 11 && $y -le 11 ]]
do
	coinFlip=$((RANDOM%2))

	if [ $coinFlip = 1 ]
	then
		x=$(($x+1))
	else y=$(($y+1))
	fi
		if [ $x -eq 11 ]
		then echo Head Won 11 times
			break
		elif [ $y -eq 11 ]
		then echo Tail Won 11 times
			break
		fi
echo $x $y
done
