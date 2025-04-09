#!/bin/bash
#Author: Mukund
#Restart a Service if it Crashes/Not Installed

service="docker"

if ! sudo yum list installed | grep $service;then
        echo "install docker"
        sudo yum install $servic -y
        exit $?
fi

if ! sudo systemctl is-active --quiet $service; then
        echo "$service needs to restart.."
        sudo systemctl restart $service
        exit $?
fi
