#!/bin/bash

# Update and upgrade the system
echo "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Download Chrome Remote Desktop installation package
echo "Downloading Chrome Remote Desktop installation package..."
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

# Install Chrome Remote Desktop
echo "Installing Chrome Remote Desktop..."
sudo apt install -y ./chrome-remote-desktop_current_amd64.deb

# Install SLiM Display Manager
echo "Installing SLiM Display Manager..."
sudo apt install -y slim

# Install Ubuntu Desktop Environment
echo "Installing Ubuntu Desktop Environment. This may take some time..."
sudo apt install -y ubuntu-desktop

# Reboot the machine
echo "Rebooting the system..."
sudo reboot

# Note: After rebooting, the following command should be run manually after SSHing back into the instance:
# sudo service slim start
