sudo apt update -y
sudo apt upgrade -y
sudo apt install docker.io -y

# grant non-root users access to Docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
