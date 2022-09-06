#!/bin/bash
# init

# Install the packages
sudo nala install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms smartmontools gsmartcontrol smart-notifier mailutils powertop

sudo tlp start
sudo systemctl enable tlp.service


sudo powertop --auto-tune
#Install TLPUI
flatpak install flathub com.github.d4nj1.tlpui
