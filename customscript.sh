#!/bin/bash
apt update 
apt -y install apache2
apt -y install cockpit
apt -y install docker.io
echo "Hello world from $(hostname) $(hostname -I)" > /var/www/html/index.html
