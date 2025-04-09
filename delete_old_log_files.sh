#!/bin/bash
#Author: Mukund
#Delete old log files from a specified directory

LOG_DIR="/var/log/httpd.log"
DAYS=7

find $LOG_DIR -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;
echo "Old log files deleted from $LOG_DIR"
