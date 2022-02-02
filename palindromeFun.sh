#!/bin/bash -x

primeFun() {
n=$1
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
                echo 1
        else
                echo 0
        fi
}

palindrome () {
num=$1
rev=0
while [ $num != 0 ];
do
        rem=$(( $num % 10 ))
        rev=$(( $rev*10 + $rem ))
        num=$(( $num / 10 ))
done
echo $rev
}


read -p "enter the num " a

b=$(primeFun $a)

if [ $b -eq 1 ]
then
	c=$(palindrome $a)
	d=$(primeFun $c)

	if [ $d -eq 1 ]
	then
		echo palindrome of  prime no. $a is also a prime no.
	else
		echo plaindrome of prime no. $a is not a prime no.
	fi
else
	echo $a is not a prime no.
fi
