#!/bin/bash

if [ "$#" -lt 2 ]
then
	echo "Usage: $0 param nb_params"
	exit 1
fi

loop_to () {
	for ((i=1;i<=$2;i++));
	do
		echo -n "$1 "
	done
}

# Don't go over 500000, it could segv
./100-args `loop_to $1 $2`
