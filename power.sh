#!/bin/bash
# init
sudo apt-add-repository -ys ppa:system76-dev/stable

sudo nala update
sudo nala install -y system76-power system76-io-dkms system76-dkms system76-acpi-dkms powertop
sudo powertop --auto-tune

#Ucomment Below if using LMDE or any Debian-based systems
#https://launchpad.net/~system76-dev/+archive/ubuntu/stable/+files/system76-power_1.1.22~1659403314~20.04~357f4b0~dev_amd64.deb

