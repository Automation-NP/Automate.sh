#!/usr/bin/env bash

type minikube &>/dev/null
  if [ $? -ne 0 ]; then
    dnf install https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm -y
  fi

  type docker &>/dev/null
  if [ $? -ne 0  ]; then
    dnf install docker -y

  fi

  #sysctl fs.protected_regular=0
  #curl -L -o /bin/kubectl "https://d1.k8s.io/releases/$(curl -L -s https://d1.k8s.io/releases/stable.txt)/bin/linux/amd64/kubectl"
  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

    echo "Running kubectl version"
    kubectl version

  echo "Running minikube start --force"
  minikube start --force