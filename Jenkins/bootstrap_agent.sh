#!/bin/bash
set -e
# install terraform
TFVER=1.8.0
curl -O https://releases.hashicorp.com/terraform/${TFVER}/terraform_${TFVER}_linux_amd64.zip
unzip terraform_${TFVER}_linux_amd64.zip
sudo mv terraform /usr/local/bin/

# install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# install awscli v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# install unzip
sudo apt-get update && sudo apt-get install -y unzip jq