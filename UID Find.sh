#!/bin/bash

file="/etc/passwd"

if [[ $# -eq "0" ]]
then
	echo "Usage: $0 { UID }"
	exit
fi

if grep "$1" "$file" | awk '{print $0}'
then
	echo "$1 Found in $file"
else
	echo "$1 Not Found in $file"
fi

