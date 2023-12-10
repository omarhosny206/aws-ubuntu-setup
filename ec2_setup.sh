#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

# 1 GB swap memory
sudo swapon -s
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo "/swapfile swap swap defaults 0 0" | sudo tee -a /etc/fstab
sudo swapon -s

# Install Docker
sudo apt install docker.io -y
sudo groupadd docker
sudo usermod -aG docker $USER

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install micro (terminal text editor)
sudo apt install micro -y

# Create 'docker' group, add user, and start a new session
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
