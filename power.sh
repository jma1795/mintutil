#!/bin/bash
# init

#Packages
echo 'Installing packages'
sudo nala install -y smartmontools sdparm tlp tlp-rdw powertop
sudo nala install -y linux-cpupower
flatpak install -y flathub com.github.d4nj1.tlpui

#Calibration / services
echo 'starting services, enabling default tlp.conf'
sudo powertop --calibrate
sudo powertop --auto-tune
sudo systemctl enable tlp
sudo tlp start

echo '***Power Management Installed!***'
echo 'Check TLPUI or tlp.conf for further configuration'
