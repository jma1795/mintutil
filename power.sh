#!/bin/bash
# init

# Install the packages
#sudo nala install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms smartmontools gsmartcontrol smart-notifier mailutils powertop
sudo nala install powertop
cd config
#cp tlp.conf /etc/tlp.conf
sudo cp powertop.service /etc/systemd/system/powertop.service
cd ..
#sudo systemctl enable tlp.service
sudo systemctl enable powertop.service
#sudo tlp start
sudo powertop --auto-tune

#Install TLPUI
#flatpak install flathub com.github.d4nj1.tlpui

#Auto-cpufreq install:
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
sudo auto-cpufreq --install

cd config
cp auto-cpufreq.conf /etc/auto-cpufreq.conf
cd ..
