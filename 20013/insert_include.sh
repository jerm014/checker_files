#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo -e "Usage: $0 file header\n"
	echo -e "\tfile:\tThe file to insert the include in"
	echo -e "\theader:\tThe header file to be inserted"
	exit 1
fi

f=${1%.c}
suffix=${2%.h}

echo -e "#include \"${2}\"" > "${f}_${suffix}.c" && cat "${f}.c" >> "${f}_${suffix}.c"
