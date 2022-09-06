#!/bin/bash
# init
sudo apt update
sudo apt install -y git make

#Volian Scar Repo for Nala APT Front-end
echo "deb http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null

#Ubuntu 22.04 / Debian Sid
sudo apt update && sudo apt install -y nala


echo "****Pre-setup Complete****"
