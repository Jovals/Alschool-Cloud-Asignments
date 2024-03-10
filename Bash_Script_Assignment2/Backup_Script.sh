#!/bin/bash
#sudo apt update
#sudo apt install tar

timestamp=$(date '+%Y_%m_%d_%H_%M_%S')
source_directory=$1
destination_directory=$2
backup_directory=$destination_directory$timestamp.tar.gz 


sudo tar -czf $backup_directory  $source_directory

echo $backup_directory
