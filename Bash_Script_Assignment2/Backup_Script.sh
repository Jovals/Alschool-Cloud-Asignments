
#!/bin/bash


timestamp=$(date '+%Y_%m_%d_%H-%M-%S')
source_directory=$1
destination_directory=$2
backup_directory=$destination_directory$timestamp.tar.gz 

if [ $# -ne 2 ]
then
  echo "Usage: backup.sh <source_directory> <target_directory>"
  echo "Please try again"
  exit 1 
fi

if [ ! -d "$source_directory" ]; then
	echo "Source directory $source_directory does not exist"
	exit 2
fi

if [ -z "$(ls -A $source_dirrctory)" ]; then
	echo "Source dir $source_diretory is empty"
	exit 3
fi

if [ ! -d "$destination_directory" ]; then
	mkdir -p $destination_directory
fi

sudo tar -czf $backup_directory  $source_directory

echo $backup_directory

