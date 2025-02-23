#!/bin/bash

  Installing k9s
  cd /opt && wget https://github.com/derailed/k9s/releases/download/v0.40.5/k9s_Linux_amd64.tar.gz
  sleep 5s
  if [ $? -eq 0 ]; then
    tar -xzf /opt/k9s_Linux_amd64.tar.gz
    else
      echo "Download failed"
      exit 1
    fi

    Taking Backup of bash_profile
    cp -pr ~/.bash_profile ~/.bash_profile_$(date +\%Y-\%m-\%d)
    echo export k9s=/root/k9s_1/ >> ~/.bash_profile
    echo export PATH=$PATH:/root/k9s_1 >> ~/.bash_profile

    sleep 5s;
    source ~/.bash_profile
     echo K9s is Ready to use.
