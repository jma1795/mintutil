#!/bin/bash
# init

#Packages
echo 'Installing packages'
sudo nala install -y powertop
mkdir $HOME/.laptop
cd $HOME/.laptop
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
cd..
#Charge Thesholding
#wget https://github.com/tshakalekholoane/bat/releases/download/0.14/bat
wget https://github.com/tshakalekholoane/bat/releases/latest/bat
mv bat $HOME/.laptop
chmod +x bat
ln -s $HOME/.laptop/bat /usr/local/bin/bat
echo '***Checking if Installed***'
bat threshold
sudo bat threshold 80
sudo bat persist
echo '***Power Management Installed!***'
