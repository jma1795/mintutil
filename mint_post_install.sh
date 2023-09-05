#!/bin/bash

# Make Some Directories
mkdir -p ~/bin ~/code

# Update apt
sudo mint-switch-to-local-mirror
sudo apt update

# Multimedia CODECs
sudo apt install mint-meta-codecs -y

# Install git
sudo apt install git -y

# Install tree
sudo apt install tree -y

# Install NFS
sudo apt install nfs-common -y

# Install Sublime Text
wget $(curl -s https://www.sublimetext.com/download_thanks?target=x64-deb |grep url|grep "amd64.deb"| sed  's/^[ \t]\+\?url = "\(.\+\?\)"/\1/g')
sudo dpkg -i sublime*.deb
rm sublime*.deb


# install vim and theme
sudo apt install vim -y
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Fix dm-raid45 not found error
sudo apt-get purge dmraid -y

# Install OpenSSH Server
sudo apt install openssh-server -y

# Install Terminator
sudo apt install terminator -y

# Install Gparted
sudo apt install gparted -y

# Uninstall Stuff
sudo apt purge -y simple-scan
sudo apt purge -y drawing
sudo apt purge -y "pix*"
sudo apt purge -y hexchat
sudo apt purge -y thunderbird xul-ext-lightning
sudo apt purge -y "transmission-*"
sudo apt purge -y "libreoffice-*" liblibreoffice-java
sudo apt purge -y celluloid
sudo apt purge -y hypnotix
sudo apt purge -y "rhythmbox*"
sudo apt purge -y "openjdk-*"
sudo apt purge -y hunspell-en-au hunspell-en-ca hunspell-en-gb hunspell-en-za hyphen-de hyphen-en-ca 
sudo apt purge -y hyphen-en-gb hyphen-fr hyphen-it hyphen-pt-br hyphen-pt-pt hyphen-ru
sudo apt purge -y mythes-en-au
sudo apt purge -y warpinator

# Remove CJK Fonts
sudo apt purge -y "fonts-kacst*" "fonts-khmeros*" fonts-lklug-sinhala fonts-guru-extra "fonts-nanum*" fonts-noto-cjk "fonts-takao*" fonts-tibetan-machine fonts-lao fonts-sil-padauk fonts-sil-abyssinica "fonts-tlwg-*" "fonts-lohit-*" fonts-beng-extra fonts-gargi fonts-gubbi fonts-gujr-extra fonts-kalapi "fonts-samyak*" fonts-navilu fonts-nakula fonts-orya-extra fonts-pagul fonts-sarai "fonts-telu*" "fonts-wqy*" "fonts-smc*" fonts-deva-extra fonts-sahadeva

# Add some fonts
sudo apt install -y ttf-bitstream-vera 

# Reconfiure fonts
sudo dpkg-reconfigure fontconfig

# Upgrade Packages
sudo apt upgrade -y

# htop
sudo apt install htop -y

# Install Pulse Audio
sudo apt install pavucontrol -y

# Install libcurses
sudo apt install libncurses5 -y

# Install python3
sudo apt install python3 python3-pip -y

# Screen
sudo apt install screen -y

# Autoremove
sudo apt autoremove -y

# Set journal size
sudo journalctl --vacuum-size=40M
sudo sed -i 's/#SystemMaxUse=/SystemMaxUse=100M/' /etc/systemd/journald.conf
sudo sed -i 's/#SystemMaxFiles=100/SystemMaxFiles=7/g' /etc/systemd/journald.conf
sudo sed -i 's/rotate 7/rotate 1/g' /etc/logrotate.d/rsyslog
sudo sed -i 's/rotate 4/rotate 1/g' /etc/logrotate.d/rsyslog
sudo sed -i 's/weekly/daily/g' /etc/logrotate.d/rsyslog
sudo sed -i 's/rotate 4/rotate 1/g' /etc/logrotate.conf
sudo sed -i 's/weekly/daily/g' /etc/logrotate.conf
sudo journalctl --rotate

# Install hyfetch - neofetch replacement
pip install hyfetch

# Generate KEY
ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa

# Enable snap
# sudo rm /etc/apt/preferences.d/nosnap.pref 
# sudo apt install snapd -y

# Install Plex
# https://knapsu.eu/plex/
sudo flatpak remote-add --if-not-exists plex-media-player https://flatpak.knapsu.eu/plex-media-player.flatpakrepo
sudo flatpak install plex-media-player tv.plex.PlexMediaPlayer -y

# Install Variety Wallpaper
sudo add-apt-repository ppa:peterlevi/ppa -y
sudo apt update
sudo apt install variety -y

# Install Plank
sudo apt install plank -y

# Install Shutter
sudo apt install shutter -y

# Install Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub > linux_signing_key.pub
sudo install -D -o root -g root -m 644 linux_signing_key.pub /etc/apt/keyrings/linux_signing_key.pub
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/linux_signing_key.pub] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
sudo apt update
sudo apt install google-chrome-stable -y

# Add Some Stuff to .bashrc
echo "export PATH=~/bin:\$PATH" >> ~/.bashrc 
echo "export PATH=~/.local/bin:\$PATH" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "source ~/.bash_aliases" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "alias neofetch=~/.local/bin/hyfetch" >> ~/.bashrc
echo hyfetch >> ~/.bashrc
echo "" >> ~/.bashrc
echo "alias ls='/usr/bin/ls --color --group-directories-first'" >> ~/.bashrc
echo "alias l='ls -lah'" >> ~/.bashrc
echo "" >> ~/.bashrc
echo 'export PS1="\[\e[32m\]\u\[\e[m\]@\[\e[32m\]\h\[\e[m\]\[\e[31m\]\$(parse_term_or_tty)\n\[\e[94m\]\w\[\e[m\]\[\e[33m\]\$(parse_git_branch)\[\e[m\] \\$ "' >> ~/.bashrc

# Remove additional langs
sudo apt install -y localepurge
