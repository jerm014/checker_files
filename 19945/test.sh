#!/bin/bash

# Check if an array contains a certain value
function contains() {
	local n=$#
	local value=${!n}
	for ((i=1;i < $#;i++)) {
		if [ "${!i}" == "${value}" ]; then
			echo "y"
			return 0
		fi
	}
	echo "n"
	return 1
}

# Check for duplicated password generation
for i in {1..11}
do
	# Launch the Keygen executable
	output=$(./101-keygen)
	# echo "${i} -> ${output}"
	# Check if the printed password was previously printed
	if [ $(contains "${outputs[@]}" "${output}") == "y" ]
	then
		echo "Duplicated"
		exit 1
	fi
	# If not, store the printed password for future checks
	outputs[$i]=$output
	# Test the password against de crack-me executable
	res=$(./101-crackme "${output}")
	echo "RES:${res}"
	# Check the result, and quit if it fails
	if [ $? -ne 0 ]
	then
		echo "Fail"
		exit 1
	fi
	# Wait for a second before running again the keygen
	# If we don't wait, the 'time(NULL)' call in the keygen program
	# won't have enough time to change
	# So the 'rand()' calls will give the same results ...
	sleep 1.2
done

echo "OK"
