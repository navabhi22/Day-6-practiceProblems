#!/bin/bash -x

read -p "enter the number " x
num=$x
rev=0
while [ $num != 0 ];
do
        rem=$(( $num % 10 ))
        rev=$(( $rev*10 + $rem ))
        num=$(( $num / 10 ))
done
if [ $rev -eq $x ];
then
echo "$1 a palindrome"
else
echo "$1 not a palindrome"
fi
