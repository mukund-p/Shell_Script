#!/bin/bash
# Author: Mukund
# Purpose: Create a compressed backup of /etc directory

# Set backup directory and timestamp
backup_dir="/mnt/backups/"
timestamp=$(date +"%Y%m%d%H%M%S")

# Create backup directory if it doesn't exist
[ ! -d "$backup_dir" ] && sudo mkdir -p $backup_dir

# Create a tar.gz backup of /etc
sudo tar -cvzf $backup_dir/backup_on_$timestamp.tar.gz /etc

# Notify user of backup completion
echo "Backup created: backup_on_$timestamp.tar.gz at $backup_dir"
