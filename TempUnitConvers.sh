#!/bin/bash -x

read -p " press 1 to enter temp in degC and press 0 to enter temp in degF " unit
read -p " enter the temp " x

function farnToCelc ()
{
	echo $1 | awk '{ print degC=($1-32)*5/9 }'
}

function celcToFarn ()
{
	echo $1 | awk '{print degF=($1*9/5)+32 }'
}


case $unit in
	"0")
		if [ $x -le 212 -a $x -ge 32 ]	
		then farnToCelc $x
		else
		echo enter temp inside the liquid water range
		fi
	;;
	"1")
		if [ $x -le 100 -a $x -ge 0 ]
		then
		celcToFarn $x
		else
		echo enter the temp inside the liquid water range
		fi
	;;
	*)
		echo choos valid unit
esac
