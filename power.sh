#!/bin/bash
# init

# Install the packages
sudo nala install tlp tlp-rdw powertop acpi-call-dkms software-properties-common

sudo powertop calibrate

sudo cp powertop.service /etc/systemd/system/powertop.service
sudo cp tlp.conf

systemctl enable --now powertop
systemctl enable --now tlp.service

#Install TLPUI
flatpak install flathub com.github.d4nj1.tlpui
