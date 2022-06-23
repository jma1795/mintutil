#!/bin/bash
# init

sudo apt install -y git make inkscape

cd apps
sudo apt install ./nala-legacy_0.8.2_amd64.deb
sudo apt install ./system-monitoring-center_1.21.0_all.deb
echo "****Packages Installed****"

