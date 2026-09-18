#!/bin/bash

if [[ $# -eq 0 ]] then
	echo "Enter number: "
	read num
	if [[ $num -lt 1 ]] then
		echo "ERROR: Number cannot be less than 1"
	else
		rand_num=$((1 + RANDOM % $num))
		echo "$rand_num"
	fi
elif [[ $1 -lt 1 ]] then
	echo "ERROR: Number cannot be less than 1"
else
	rand_num=$((1 + RANDOM % $1))
	echo "$rand_num"
fi
