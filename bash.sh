#!/bin/bash
#creating user account using bash script
echo "enter the name of the newuser's name"
read name
sudo adduser $name
id $name # to verify
sudo passwd $name
sudo tail -5 /etc/shadow # to verify
# creating group account
sudo groupadd Engineer
sudo usermod -aG Engineer $name
sudo lid # to verify
ls /home # to display list of users
