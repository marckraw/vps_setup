#!/bin/bash

set -e

# Update package lists
sudo apt-get update
# Install necessary packages
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Add Docker's repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
# Update package lists again
sudo apt-get update
# Install Docker
sudo apt-get install -y docker-ce
# Download Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# Make Docker Compose executable
sudo chmod +x /usr/local/bin/docker-compose
