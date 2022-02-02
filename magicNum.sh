#!/bin/bash -x

echo think of a number between 1 to 100
start=1
last=100
mid=50
isMagicNum=0

while (( $isMagicNum == 0 ))
do
	echo $mid
	read -p "press 1 if $mid is your number or press 0 if it is not your number " isMagicNum
	read -p "press 1 if your number is greater than $mid or press 2 if your no. is less than $mid" x
	if [ $isMagicNum -eq 1 ]
	then
		break
	fi
	if [ $x -eq 1 ]
	then
		start=$mid
		mid=$((($start+$last)/2))
	else
		last=$mid
		mid=$((($start+$last)/2))
	fi
done
