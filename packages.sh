#!/bin/bash
# init

# Update apt and set mirrors
sudo mint-switch-to-local-mirror
sudo apt update

# Multimedia CODECs
sudo nala install mint-meta-codecs -y

#Update
sudo nala update && nala upgrade -y


#Native deb Packages
sudo nala install -y cheese gnome-firmware psensor xsensors git nfs-common gparted htop bpytop spotify-client

# Install Standalone Packages
mkdir packages
cd packages
wget https://dl.thorium.rocks/debian/dists/stable/thorium.list
sudo mv thorium.list /etc/apt/sources.list.d/
sudo apt update
sudo apt install thorium-browser
cd ..

#Flatpaks
flatpak install -y flathub com.discordapp.Discord com.github.tchx84.Flatseal com.github.iwalton3.jellyfin-media-player com.notesnook.Notesnook com.bitwarden.desktop
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --filesystem=$HOME/.icons 

# Purge apps and cleanup
sudo apt purge -y hexchat
sudo apt purge -y "transmission-*"
sudo apt purge -y hypnotix
sudo apt autoremove -y

echo "****Complete****"
pause 'Press [Enter] key to continue...'
exit 0
