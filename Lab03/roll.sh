#!/bin/bash

echo "Enter a number: "
read num

if [[ $num -lt 1 ]] then
	echo "ERROR: Number cannot be less than 1"
else
	rand_num=$((1 + RANDOM % $num))
	echo "$rand_num"
fi
