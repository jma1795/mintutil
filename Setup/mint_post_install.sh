#!/bin/bash

# Update apt
sudo apt install nala -y
sudo nala update

# Multimedia CODECs
sudo nala install mint-meta-codecs -y

# Install Native System Packages
sudo nala install git nfs-common gparted xsensors guvcview htop bpytop gimp inkscape -y

# Install non-repo packages
wget https://download.nomachine.com/download/8.11/Linux/nomachine_8.11.3_4_amd64.deb
wget https://launchpad.net/~maveonair/+archive/ubuntu/helix-editor/+files/helix_23.10-1~ubuntu22.04~ppa1_amd64.deb
sudo dpkg -i *.deb

# Great Purge

# Upgrade Packages
sudo nala upgrade -y

# Autoremove
sudo nala autoremove -y

# Install flatpaks
flatpak install flathub com.google.Chrome com.discordapp.Discord 
flatpak install flathub com.obsproject.Studio
flatpak install flathub org.kde.kdenlive

