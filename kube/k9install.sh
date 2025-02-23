#!/bin/bash

# Installing k9s
echo "Downloading K9s..."
cd /opt && wget https://github.com/derailed/k9s/releases/download/v0.40.5/k9s_Linux_amd64.tar.gz
sleep 5s

# Check if the download was successful
if [ $? -eq 0 ]; then
    echo "Download successful. Extracting K9s..."
    tar -xzf /opt/k9s_Linux_amd64.tar.gz
else
    echo "Download failed"
    exit 1
fi

# Taking Backup of .bash_profile
echo "Backing up .bash_profile..."
cp -pr ~/.bash_profile ~/.bash_profile_$(date +\%Y-\%m-\%d)

# Adding K9s export to .bash_profile
echo "export K9S=/root/k9s_1/" >> ~/.bash_profile
echo "export PATH=\$PATH:/root/k9s_1" >> ~/.bash_profile

# Reload .bash_profile to apply changes
echo "Reloading .bash_profile..."
sleep 5s && source ~/.bash_profile

# K9s is ready to use
echo "K9s is ready to use."
