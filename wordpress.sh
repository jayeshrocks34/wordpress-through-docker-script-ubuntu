#!/bin/bash
sudo apt-get update
sudo apt-get install git
git clone https://github.com/jayeshrocks34/wordpress.git
sudo apt-get install docker.io
sudo usermod -a -G docker ubuntu
sudo service docker start
sudo systemctl enable docker
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
cd wordpress
sudo docker-compose up -d
sudo docker ps -a
