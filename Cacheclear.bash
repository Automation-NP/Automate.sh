#!/bin/bash

#Cache clear
echo -e "\e[33mWe are Clearing cache\e[0m"
echo 1 > /proc/sys/vm/drop_caches
free -h
echo -e "\e[34mCache has been cleared\e[0m"
