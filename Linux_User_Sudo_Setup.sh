#!/bin/bash
# Author: Mukund
# A script to create a new user, set a password, configure password expiration, and add the user to the sudoers file for sudo privileges

# Set username and password
username=user1
passwd=user@123

#### Check if user is already in sudoers file ####
if sudo cat /etc/sudoers | grep $username; then
    echo "useradd: user '$username' already exists"
    exit 1
fi

#### Create user, set password, and set expiration ####
sudo useradd $username
echo "$username:$passwd" | sudo chpasswd
sudo chage -M 1 $username
echo "User $username created with password expiry in 1 day."

#### Check if username is empty ####
if [ -z "$username" ]; then
    echo "usage: $0 <$username>"
    exit 1
fi

#### Verify user exists ####
if ! id "$username" &>/dev/null; then
    echo "User $username does not exist. Please create the user first."
    exit 1
fi

#### Add user to sudoers file ####
echo "$username ALL=(ALL)       ALL" | sudo tee -a /etc/sudoers

#### Verify if user was added to sudoers ####
if sudo cat /etc/sudoers | grep -q $username; then
    echo "User $username successfully added to sudoers."
else
    echo "Failed to add user $username to sudoers."
fi
