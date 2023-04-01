#!/bin/bash
 
if [[ $# -lt 2 ]]; then
	echo "Usage: $0 <directory_path> <text_string>"
	exit 1
fi 

mkdir -p "$(dirname "$1")"

echo "$2" > "$1"

if [[ $? -ne 0 ]]; then
    echo "Error: Unable to create file '$1'"
    exit 1
fi
 

