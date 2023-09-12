#!/bin/bash
apt update 
apt -y install apache2
apt -y install cockpit
apt -y install docker.io
echo "Hello world from $(hostname) $(hostname -I)" > /var/www/html/index.html
sudo docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
apt -y upgrade
