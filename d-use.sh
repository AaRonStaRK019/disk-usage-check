#!/bin/bash

if [ "$#" -eq 2 ] && [ "$1" == "-d" ] && [ -d $2 ]; then
	echo "Disk usage in chosen directory: "
#	du -h $2
	sudo du -h --max-depth=1 "$2" | sort -rh | head
fi


if [ "$#" -eq 2 ] && [ "$1" == "-n" ]; then
	n_items=8
	chosen_dir="$2"
	echo -e "\nTop $n_items sub-directories/files by disk usage: "
	sudo du -h --max-depth=1 "$chosen_dir" | sort -rh | head -n "$n_items"

elif [ "$#" -eq 3 ] && [ "$1" == "-n" ] && [ "$2" -gt 0 ]; then
	n_items="$2"
	chosen_dir="$3"
	echo -e "\nTop $n_items sub-directories/files by disk usage: "
	sudo du -h --max-depth=1 "$chosen_dir" | sort -rh | head -n "$n_items"

fi

##############################################################
#echo "Disk usage for specified directory: "
#du -sh $chosen_dir


#echo -e "\nTop $n_items sub-directories/files by disk usage: "
#sudo du -h --max-depth=1 "$chosen_dir" | sort -rh | head -n "$n_items"
