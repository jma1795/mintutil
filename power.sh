#!/bin/bash
# init

# Install the packages
sudo nala install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms linux-cpupower smartmontools gsmartcontrol smart-notifier mailutils

#Install TLPUI
flatpak install flathub com.github.d4nj1.tlpui
