#!/bin/bash
# init
sudo apt-add-repository -ys ppa:system76-dev/stable

sudo nala update
sudo nala install -y system76-power system76-io-dkms system76-dkms system76-acpi-dkms powertop

sudo powertop --auto-tune

