#!/bin/bash

echo Installing MongoDB community edition...
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list

echo Running apt-get update -y...
apt-get update -y

echo Installing MongoDB...
sudo apt-get install -y mongodb-org=4.2.7 mongodb-org-server=4.2.7 mongodb-org-shell=4.2.7 mongodb-org-mongos=4.2.7 mongodb-org-tools=4.2.7

echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-org-shell hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections


echo Starting MongoDB...
sudo systemctl start mongod

# Configure firewall to allow TCP port 1433:
echo Configuring UFW to allow traffic on port 27017...
# ufw allow 1433/tcp
# ufw reload
apt install firewalld -y
firewall-cmd --permanent --zone=public --add-port=27017/tcp
systemctl restart firewalld
echo Done!