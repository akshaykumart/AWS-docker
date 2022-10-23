#!/bin/bash
sudo apt-get update
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull brentley/ecsdemo-nodejs
sudo docker images
sudo docker run -dit brentley/ecsdemo-nodejs
sudo docker ps
