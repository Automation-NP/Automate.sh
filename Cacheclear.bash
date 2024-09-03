#!/bin/bash

#Cache clear
Print Kindly Select what action needs to be Taken
echo -n "Enter the Option"
read -r a
echo -n "Enter the Option"
read -r b
echo -e "\e[33mWe are Clearing cache\e[0m"
echo 1 > /proc/sys/vm/drop_caches
free -h
echo -e "\e[34mCache has been cleared\e[0m"
