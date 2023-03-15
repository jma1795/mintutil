#!/bin/bash
# init

# Install the packages
sudo nala install tlp tlp-rdw powertop

sudo powertop calibrate

sudo systemctl enable powertop
sudo systemctl enable tlp

#Install TLPUI
flatpak install flathub com.github.d4nj1.tlpui

#get power management started
sudo powertop --auto-tune
sudo tlp start
echo'***Power Management Installed!***'
echo'Check TLPUI or tlp.conf for further configuration'
pause 'Press [Enter] key to Continue...'
