# BACKUP & DISK USAGE SCRIPT

This set of scripts is designed to create backups of a specified directory and save te compressed archive 

## Backup Script

### Description

![backup script](./backup.sh)
backup.sh: Backs up the contents of a directory to another location, compressing them into a tar archive.

### Usage
./backup.sh <source_directory> <destination_directory>
### Example:
./backup.sh /path/to/source /path/to/destination

 - Replace <source_directory> with the directory you want to back up
 - Replace<destination_directory> with the directory you want to save the backup


## Disc Usage Script

### Description

![disk usage script](./d-use.sh)
Lists disk usage for sub-directories and files within a given directory, with optional features to list files by number of ites prefered

### Usage
./d-use.sh [-d] <directory> : lists the items within the directory and states their disk usage
./d-use.sh [-n x] <directory> : lists x items within that directory and states their disk usage

### Example:
./d-use.sh -n 5 /var : lists and sorts by usage the top 5 items in the /var directory