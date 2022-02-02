#!/bin/bash -x
win=1
lose=0
amount=100
while [[ $amount -ne 0 && $amount -ne 200 ]]
do
	result=$((RANDOM%2))
	if [ $result -eq $win ]
	then amount=$(($amount+1))
	else
	amount=$(($amount-1))
	fi
done
