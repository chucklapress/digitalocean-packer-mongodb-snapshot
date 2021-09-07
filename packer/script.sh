#!/bin/bash
apt-get update && apt-get install curl -y
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
echo "software gathered"
sudo apt update
echo "installing Mongo"
sudo apt install mongodb-org -y
sudo systemctl start mongod.service
echo "final status"
sudo systemctl status mongod
