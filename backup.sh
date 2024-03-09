#!/bin/bash

# a script to backupa chosen directory as a tar archive

if [ "$#" -ne 2 ]; then
	echo "usage: $0 <source_directory> <destination_directory>"
	exit 1
fi

src="$1"
destination="$2"

if [ ! -d "$src" ]; then
	echo "Error $src is not a valid directory."
	exit 1
fi


mkdir -p "$destination"

timestamp=$(date +"%Y%m%d%H%M%S")

#tar -czf "$destination/backup_$timestamp.tar.gz" -C "$(dirname "$src")" "$(basename "$src")"

#echo "backup successful. Archive saved to $destination/backup_$timestamp.tar"


# Compress the source directory as a tar archive and move to the destination directory
tar -czf "$destination/backup_$timestamp.tar.gz" -C "$(dirname "$src")" "$(basename "$src")"

echo "Backup completed successfully. Archive saved to $destination/backup_$timestamp.tar.gz"
