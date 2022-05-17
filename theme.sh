#Make Theme Directories if they don't exist
mkdir ~/.icons
mkdir ~/.themes

#Get Themes
echo '*****************Downloading Themes*****************'
cd ~/Downloads
echo '*****************Getting Icons*****************'
git clone https://github.com/darkomarko42/Marwaita-Icons
echo '*****************Getting Themes*****************'
git clone https://github.com/darkomarko42/Marwaita.git
git clone https://github.com/darkomarko42/Marwaita-manjaro
git clone https://github.com/darkomarko42/Marwaita-EndeavourOs
git clone https://github.com/darkomarko42/Marwaita-ubuntu
git clone https://github.com/darkomarko42/Marwaita-Zorin
git clone https://github.com/darkomarko42/Marwaita-Pop_os
git clone https://github.com/darkomarko42/Marwaita-Debian
git clone https://github.com/darkomarko42/Marwaita-peppermint
git clone https://github.com/darkomarko42/Marwaita-Mint
git clone https://github.com/darkomarko42/Marwaita-OSX
echo '*****************Getting Bibata Cursors*****************'
mkdir Bibata
cd ~/Downloads/Bibata
curl -L https://github.com/ful1e5/Bibata_Cursor/releases/download/v1.1.2/Bibata.tar.gz --output ~/Downloads/Bibata.tar.gz
tar -xf Bibata.tar.gz

cd ~/Downloads

echo '*****************Installing Icons*****************'
mv ~/Downloads/Newaita/* ~/.icons/ 
sudo mv ~/Downloads/Bibata/* /usr/share/icons/
echo '*****************Installing Themes*****************'
mv ~/Downloads/Marwaita/* ~/.themes/
mv ~/Downloads/Marwaita-manjaro/* ~/.themes/
mv ~/Downloads/Marwaita-EndeavourOs/* ~/.themes/
mv ~/Downloads/Marwaita-ubuntu/* ~/.themes/
mv ~/Downloads/Marwaita-Zorin/* ~/.themes/
mv ~/Downloads/Marwaita-Pop_os/* ~/.themes/
mv ~/Downloads/Marwaita-Debian/* ~/.themes/
mv ~/Downloads/Marwaita-peppermint/* ~/.themes/
mv ~/Downloads/Marwaita-Mint/* ~/.themes/
mv ~/Downloads/Marwaita-OSX/* ~/.themes/

#Setting Themes
echo '*****************Attempting to Auto-set Theme*****************'

gsettings set org.gnome.desktop.interface gtk-theme 'Marwaita-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Classic'
sudo flatpak override --filesystem=$HOME/.themes
gsettings set org.cinnamon.theme name 'Elemento-dark'
gsettings set org.cinnamon.desktop.interface gtk-theme "Marwaita-dark"
gsettings set org.cinnamon.desktop.wm.preferences theme "Marwaita-dark"
gsettings set org.cinnamon.desktop.interface icon-theme 'Marwaita-dark'

#Cleanup
echo '*****************Cleaning up*****************'
rm -rf ~/Downloads/*
echo '*****************DONE!*****************'
