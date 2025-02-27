#!/bin/bash

sudo apt-get update
sudo apt-get install -y ca-certificates curl

sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo apt-get update

sudo apt-get install -y ufw
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 22
sudo ufw allow 2222
sudo ufw enable

echo "UFW installed, activated, and ports 22, 80, 443 are open."

sudo chown -R 1000:1000 ./planka-data

docker compose up -d

echo "Script execution completed, Docker Compose started."