#!/bin/bash

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Enable running Docker commands with current user
sudo groupadd docker
sudo usermod -aG docker $USER

# Refresh group membership
newgrp docker

# Verify Docker and Docker Compose installation
docker --version
docker-compose --version
