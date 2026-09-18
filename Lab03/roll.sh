#!/bin/bash

if [[ $# -eq 0 || $1 -lt 1 ]] then
	echo "Enter number: "
	read num
	while [[ $num -lt 1 ]] do
		echo "ERROR: Number cannot be less than 1; enter a new number: "
		read num
	done
	rand_num=$((1 + RANDOM % $num))
	echo "$rand_num"
else
	rand_num=$((1 + RANDOM % $1))
	echo "$rand_num"
fi
