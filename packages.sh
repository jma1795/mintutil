#!/bin/bash
# init

# Update apt and set mirrors
sudo mint-switch-to-local-mirror
sudo apt update

# Multimedia CODECs
sudo nala install mint-meta-codecs -y
sudo nala install ubuntu-restricted-extras -y


#Update
sudo nala update && nala upgrade -y


#Native deb Packages
sudo nala install -y cheese gnome-firmware psensor xsensors git nfs-common gparted htop bpytop bitwarden spotify-client

# Install Evernote client
mkdir packages
cd packages
wget https://github.com/search5/Evernote-for-Linux/releases/download/v10.60.4-linux-ddl-ga-stable/evernote-client_10.60.4-stable_amd64.deb
sudo dpkg -i evernote-client*.deb
cd ..

#Flatpaks
flatpak install -y flathub com.google.Chrome com.discordapp.Discord com.github.tchx84.Flatseal
flatpak install flathub com.github.iwalton3.jellyfin-media-player
#flatpak install flathub com.obsproject.Studio
#flatpak install flathub org.kde.kdenlive


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
