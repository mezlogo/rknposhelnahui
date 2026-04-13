#!/usr/bin/env bash

# This script MUST support repeatable excecution for update ubuntu 24.04 LTS server.

# Update package lists
sudo apt update

# Upgrade all installed packages
sudo apt upgrade -y

# Remove unnecessary packages
sudo apt autoremove -y

# Clean up downloaded package files
sudo apt autoclean

# Clear temporary files
sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*

# Clear systemd journal logs older than 3 days
sudo journalctl --vacuum-time=3d

echo "System updated and temporary data cleared."

sudo apt install -y docker git vim

# Add Docker's official GPG key:
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF
