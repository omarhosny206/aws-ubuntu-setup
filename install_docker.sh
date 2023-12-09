curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh --dry-run

# grant non-root users access to Docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
