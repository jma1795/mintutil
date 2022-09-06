#!/bin/bash
# init

# Install the packages
sudo nala install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms smartmontools gsmartcontrol smart-notifier mailutils powertop

cd config
cp tlp.conf /etc/tlp.conf
sudo cp powertop.service /etc/systemd/system/powertop.service
cd ..
sudo systemctl enable tlp.service
sudo systemctl enable powertop.service
sudo tlp start
sudo powertop --auto-tune

#Install TLPUI
flatpak install flathub com.github.d4nj1.tlpui
