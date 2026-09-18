#!/bin/bash

if [[ $# -eq 0 || $1 -lt 1 || $2 -lt 1 ]] then
	echo "Enter # of dice rolled: "
	read dicenum
	echo "Enter # of faces: "
	read facenum
	while [[ $dicenum -lt 1 || $facenum -lt 2 ]] do
		echo "ERROR: Numbers cannot be less than 1; enter a new numbers: "
		echo "# of dice rolled: "
		read dicenum
		echo "# of faces: "
		read facenum
	done
	for (( i=1 ; i<=$dicenum; i++ )) do
		rand_num=$((1 + RANDOM % $facenum))
		echo "Die $i rolled a $rand_num"
	done
else
	for (( i=1 ; i<=$1; i++ )) do
                rand_num=$((1 + RANDOM % $2))
                echo "Die $i rolled a $rand_num"
        done
fi
