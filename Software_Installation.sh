#!/bin/bash
#Author: Mukund
#Automate Software Installation

packages="java-17* git tree httpd docker"

echo "Updating package list..."
sudo yum update -y
echo "Installing required packages..."
sudo yum install -y $packages
echo "Installation complete! of $packages"
