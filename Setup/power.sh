#!/bin/bash
# init

#Packages
echo 'Installing packages'
sudo nala install acpi-call-dkms smartmontools linux-cpupower sdparm tlp tlp-rdw powertop
flatpak install -y flathub com.github.d4nj1.tlpui

#Calibration / services
echo 'starting services'
sudo systemctl enable tlp
sudo tlp start

echo '***Power Management Installed!***'
echo 'Check TLPUI or tlp.conf for further configuration'
