#!/bin/bash

#Cache clear
echo -e "\e[col33mWe are Clearing cache\[m0"
echo 1 > /proc/sys/vm/drop_caches
free -h
echo -e "\e[col34mCache has been cleared\[m0"
