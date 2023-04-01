#!/bin/bash

# Check if arguments are provided
if [[ $# -lt 2 ]]; then
    echo "Usage: $0 <directory_path> <search_string>"
    exit 1
fi

# Check if filesdir is a directory
if [[ ! -d "$1" ]]; then
    echo "Error: $1 is not a directory"
    exit 1
fi
	
# Search for matching lines and count the results
files=$(find $1 -type f | wc -l)
lines=$(grep -rl $2  $1| wc -l)

# Print the results
echo "The number of files are $files and the number of matching lines are $lines"
