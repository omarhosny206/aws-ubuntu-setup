#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

# create 1 GB of swap memory
sudo swapon -s
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo "/swapfile swap swap defaults 0 0" | sudo tee -a /etc/fstab
sudo swapon -s

# install Docker
sudo apt install docker.io -y

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# install micro (terminal-based text editor)
sudo apt install micro -y

# clean developer directory
cd .. && rm -rf aws-ubuntu-setup

# install AWS CLI V2
cd /
sudo apt install unzip -y
sudo curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip awscliv2.zip
sudo ./aws/install

# create 'docker' group to ubuntu user (non-root user)
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
