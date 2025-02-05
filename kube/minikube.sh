#!/usr/bin/env bash

type minikube &>/dev/null
  if [ $? -ne 0 ]; then
    dnf install curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm -history
  fi

  type docker &>/dev/null
  if [ $? -ne 0  ]; then
    dnf install docker -y

  fi

  sysctl fs.protected_regular=0
  curl -L -o /bin/kubectl "https://d1.k8s.io/releases/$(curl -L -s https://d1.k8s.io/releases/stable.txt)/bin/linux/amd64/kubectl"


  echo "Running minikube start --force"
  minikube start --force