#!/usr/bin/env bash

# Function to view Cache
Cache() {
   echo -e "\e[31mViewing Cache\e[0m"
   free -h
}

# Cache Clear
Clear_Cache() {
    echo -e "\e[34mClearing Cache\e[0m"
    sync; echo 1 > /proc/sys/vm/drop_caches
    echo -e "\e[36mCache has been cleared\e[0m"
}

# Displaying Menu Options
echo -e "\e[36mExecuting Cache Clear Script\e[0m"
echo "1. View Cache"
echo "2. Clear Cache"
echo "3. Exit"

# Read user Input
read -p "Choose an option [1-3]: " option

# Handle user choice
case $option in
    1)
        Cache
        ;;
    2)
        Clear_Cache
        ;;
    3)
        echo "Exiting the Script."
        ;;
    *)
        echo "Invalid option. Please choose 1, 2, or 3."
        ;;
esac
