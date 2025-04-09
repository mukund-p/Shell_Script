#!/bin/bash
#Auther: Mukund
#Bash script to check if Apache (httpd) is running, If not then restart the service.

service="httpd"

if pgrep -x "$service" > /dev/null
then
        echo "$service is running"
else
        echo "$service is not running, need to restart.."
        sudo systemctl start $service
fi
