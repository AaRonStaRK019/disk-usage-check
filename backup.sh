#!/bin/bash

# a script to backupa chosen directory as a tar archive

# check if two arguments are provided
if [ "$#" -ne 2 ]; then
	echo "usage: $0 <source_directory> <destination_directory>"
	exit 1
fi

src="$1"
destination="$2"

#check if source is a valid directory
if [ ! -d "$src" ]; then
	echo "Error $src is not a valid directory."
	exit 1
fi

#create the destination directory if it doesn't exist
mkdir -p "$destination"

#create timestamp
timestamp=$(date +"%Y%m%d%H%M%S")

# create tar archive and move to the destination directory
tar -cf "$destination/backup_$timestamp.tar" -C "$(dirname "$src")" "$(basename "$src")"

echo "Backup completed successfully. Archive saved to $destination/backup_$timestamp.tar"
