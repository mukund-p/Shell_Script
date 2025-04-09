#!/bin/bash
#Author: Mukund
# Check and Kill High Memory Processes

threshold=700

ps aux --sort=-%mem | awk '{if($6/1024 > 700) print $2, $6/1024 "MB"}' | while read pid mem;
do
        echo "kill the process $pid using $mem RAM"
        sudo kill -9 $pid
done
