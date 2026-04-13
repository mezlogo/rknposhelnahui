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
