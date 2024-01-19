#!/bin/bash
# init

# INSTALL WINE
echo "Installing WINE"

sudo dpkg --add-architecture i386 

sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

#For Ubuntu 22.04-based
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
#Stable Branch
sudo apt update
sudo apt install --install-recommends winehq-stable

# INSTALL WINETRICKS
echo "Installing Winetricks"
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo cp winetricks /usr/local/bin
# WINETRICKS DEPENDENCIES
winetricks -q -v d3dx10 d3dx9 dotnet35 dotnet40 dotnet45 dotnet48 dxvk vcrun2008 vcrun2010 vcrun2012 vcrun2019 vcrun6sp6

# INSTALL Game launchers
echo "Installing Lutris"
flatpak install flathub net.lutris.Lutris
sudo apt install steam
flatpak install com.heroicgameslauncher.hgl

echo "****Complete****"
pause 'Press [Enter] key to continue...'
exit 0