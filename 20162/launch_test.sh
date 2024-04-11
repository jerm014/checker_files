#!/bin/bash

if [ "$#" -lt 1 ]; then
	echo "Usage: $0 username"
	exit 1
fi

username=$1

./crackme5 $username `./keygen5 $username`
