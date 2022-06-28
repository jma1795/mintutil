#!/bin/bash
# init
sudo apt -y update
sudo apt install -y git make inkscape

cd apps
sudo apt install -y ./nala-legacy_0.8.2_amd64.deb
sudo apt install -y ./system-monitoring-center_1.21.0_all.deb
echo "****Packages Installed****"
