#!/bin/bash
# init

#Install gdebi
sudo nala install gdebi-core
# Install Packages
cd packages
sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.deb
sudo wget https://github.com/VSCodium/vscodium/releases/download/1.82.2.23257/codium_1.82.2.23257_amd64.deb

sudo gdebi GitHubDesktop-linux-3.1.1-linux1.deb
sudo gdebi codium_1.82.2.23257_amd64.deb
cd ..

echo "****Complete****"
pause 'Press [Enter] key to continue...'
exit 0
