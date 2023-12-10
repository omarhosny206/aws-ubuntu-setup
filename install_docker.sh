sudo apt update -y
sudo apt upgrade -y
sudo apt install micro -y

sudo apt install docker.io -y
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# grant non-root users access to Docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
