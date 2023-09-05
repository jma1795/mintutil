#!/bin/bash

# Update apt
sudo mint-switch-to-local-mirror
sudo apt update

# Multimedia CODECs
sudo apt install mint-meta-codecs -y

# Install Native System Packages
sudo apt install git nfs-common lolypop gparted xsensors psensors -y

# Install Evernote client
wget https://github.com/search5/Evernote-for-Linux/releases/download/v10.60.4-linux-ddl-ga-stable/evernote-client_10.60.4-stable_amd64.deb
sudo dpkg -i evernote-client*.deb
#rm evernote-client*.deb

# Great Purge
sudo apt purge -y hexchat
sudo apt purge -y "transmission-*"
sudo apt purge -y hypnotix

# Upgrade Packages
sudo apt upgrade -y

# htop,bpytop
sudo apt install htop bpytop -y

# Autoremove
sudo apt autoremove -y

# Install flatpaks
flatpak install flathub com.google.Chrome com.discordapp.Discord
#flatpak install flathub com.obsproject.Studio
#flatpak install flathub org.kde.kdenlive
#flatpak install flathub com.github.iwalton3.jellyfin-media-player
#flatpak install flathub org.mozilla.Thunderbird


