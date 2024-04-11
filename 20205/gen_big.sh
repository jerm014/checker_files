#!/bin/bash

file="big.m"

rm -f $file

for i in `seq 1 3000`;
do
	rand=$(( ( RANDOM % 1000000 ) + 1 ))
	echo "push $rand" >> $file
done

echo "pall" >> $file
