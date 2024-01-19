#!/bin/bash
# init

# Update apt and set mirrors
sudo mint-switch-to-local-mirror
sudo apt update

# Multimedia CODECs
sudo nala install mint-meta-codecs -y

#Update
sudo nala update && nala upgrade -y


#Repo Software
sudo nala install -y cheese gnome-firmware psensor xsensors git nfs-common gparted btop vlc git gparted grsync flameshot ttf-mscorefonts-installer

# Install Standalone Packages


#Flatpaks
flatpak install -y flathub com.github.tchx84.Flatseal com.github.iwalton3.jellyfin-media-player com.notesnook.Notesnook com.bitwarden.desktop
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
