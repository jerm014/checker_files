#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

folder=all/**/*.bash
if [ "$#" -gt 0 ]
then
	folder=all/$1/*.bash
fi

function run_test()
{
	i=$1

	cmd="./checker.bash --diff --valgrind --ltrace ./hsh ./$i"
	$cmd > "$i.diff"

	if [ "$?" -eq "0" ]
	then
echo -e "${PURPLE}$i${NC}
	$cmd
		${GREEN}Passed${NC}"
		# rm -f "$i.diff"
	else
echo -e "${PURPLE}$i${NC}
	$cmd
		${RED}Failed${NC}"
		cat "$i.diff"
	fi
}

counter=0

for i in $folder
do
	run_test $i
	let counter=counter+1
done

echo -e "${YELLOW}$counter tests${NC}"
