#!/bin/bash
# init
echo "****************************************"
echo "* Warthunder's Power Management Script *"
echo "****************************************"

echo "Slimbook Battery can be installed without this script. For more details and system requirements please refer to the following URL:"
echo "https://github.com/Slimbook-Team/slimbookbattery/"
echo "Press CTRL+C anytime to end this script"
#Packages
echo 'Installing packages'

cd Applications

#If another version is required you can clone it from this repo
#wget https://github.com/Slimbook-Team/slimbookbattery/releases/download/ 

sudo apt install ./slimbookbattery*.deb
cd ..
cd Configs
sudo cp tlp.conf tlp.conf.bak && sudo cp tlp.conf /etc/tlp.conf
cd ..

echo 'Please launch Slimbookbattery from your launcher to start the services'
echo '***Power Management Installed!***'
