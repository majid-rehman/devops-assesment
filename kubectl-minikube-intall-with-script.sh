#!/bin/bash

# I have use old version because these were already installed on my system , 
# You can use latest versions of minikube and kubectl. minikube latest version v0.32.0 , kubectl version v1.13.0

ARCH=$(uname | awk '{print tolower($0)}')
TARGET_VERSION="v0.15.0"
MINIKUBE_URL="https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64"

KUBECTL_VER="v1.23.0"
KUBECTL_URL="http://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VER}/bin/${ARCH}/amd64/kubectl"

echo "installing latest kubectl..."
curl -Lo kubectl $KUBECTL_URL && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

echo "installing latest minikube..."
curl -Lo minikube $MINIKUBE_URL && sudo install minikube-darwin-amd64 /usr/local/bin/minikube

#ISO_URL="https://storage.googleapis.com/minikube/iso/minikube-v1.0.1.iso"
#minikube start \
 #   --vm-driver=virtualbox \
  #  --iso-url=$ISO_URL

echo "starting minikube dashboard..."
minikube start

echo "starting minikube dashboard..."
minikube dashboard
