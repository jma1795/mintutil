#!/bin/bash
# init

#Packages
echo'Installing packages'
sudo nala install tlp tlp-rdw powertop
flatpak install flathub com.github.d4nj1.tlpui

#Calibration / services
echo'Engaging powertop calibration. This could take several minutes'
sudo powertop calibrate
echo'starting services'
sudo systemctl enable powertop
sudo systemctl enable tlp
sudo powertop --auto-tune
sudo tlp start

echo'***Power Management Installed!***'
echo'Check TLPUI or tlp.conf for further configuration'
pause 'Press [Enter] key to Continue...'
