sudo swapon -s
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo micro /etc/fstab
# add this line --> /swapfile swap swap defaults 0 0
sudo swapon -s
