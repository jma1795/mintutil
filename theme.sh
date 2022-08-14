#!/bin/bash
# init
#installing icon theme
cd icons
git clone https://github.com/masalla-art/masalla-icon-theme.git
cd masalla-icon-theme/
sudo cp -R ./masalla/ /usr/share/icons/
sudo cp -R ./masalla-dark/ /usr/share/icons/
cd ..

git clone https://github.com/masalla-art/masalla-colors.git
sudo cp -R ./masalla-red/ /usr/share/icons/
sudo cp -R ./masalla-red-dark/ /usr/share/icons/
sudo cp -R ./masalla-yellow/ /usr/share/icons/
sudo cp -R ./masalla-yellow-dark/ /usr/share/icons/
sudo cp -R ./masalla-grey/ /usr/share/icons/
sudo cp -R ./masalla-grey-dark/ /usr/share/icons/
sudo cp -R ./masalla-green/ /usr/share/icons/
sudo cp -R ./masalla-green-dark/ /usr/share/icons/
sudo cp -R ./masalla-violet/ /usr/share/icons/
sudo cp -R ./masalla-violet-dark/ /usr/share/icons/
sudo cp -R ./masalla-brown/ /usr/share/icons/
sudo cp -R ./masalla-brown-dark/ /usr/share/icons/
sudo cp -R ./masalla-black/ /usr/share/icons/
sudo cp -R ./masalla-black-dark/ /usr/share/icons/
cd ..

#installing gtk/cinnamon theme
cd theme
git clone https://github.com/hrdwrrsk/adementary-theme.git
cd adementary-theme
sudo ./install.sh
cd ..
cd ..

flatpak install flathub org.gtk.Gtk3theme.Adementary

#Install Cursors
wget https://github.com/ful1e5/Bibata_Cursor/releases/download/v1.1.2/Bibata-Modern-Classic.tar.gz
tar -xf Bibata-Modern-Classic.tar.gz
cp Bibata-Modern-Classic /usr/share/icons/
