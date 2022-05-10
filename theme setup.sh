#Make Theme Directories if they don't exist
mkdir ~/.icons
mkdir ~/.themes

#Install Prerequisits
sudo dnf install git make inkscape xcursorgen

#Get Themes
echo '*****************Getting Themes*****************'
cd ~/Downloads
git clone https://github.com/cbrnix/Newaita-reborn.git
git clone https://github.com/darkomarko42/Elemento.git


mv ~/Downloads/Newaita-reborn/* ~/.icons/ 
mv ~/Downloads/Elemento/* ~/.themes/

git clone https://github.com/varlesh/volantes-cursors.git
cd volantes-cursors
make build
sudo make install
cd ~/Downloads

#Setting Themes
echo '*****************Auto-setting Themes*****************'

gsettings set org.gnome.desktop.interface gtk-theme 'Elemento Dark'
gsettings set org.gnome.desktop.interface cursor-theme 'volantes-cursors'
sudo flatpak override --filesystem=$HOME/.themes
gsettings set org.cinnamon.theme name 'Elemento Dark'
gsettings set org.cinnamon.desktop.interface gtk-theme "Elemento Dark"
gsettings set org.cinnamon.desktop.wm.preferences theme "Elemento Dark"
gsettings set org.cinnamon.desktop.interface icon-theme 'Newaita-reborn-dark'

#Cleanup
echo '*****************Cleaning up*****************'
rm -rf ~/Downloads/Newaita-reborn
rm -rf ~/Downloads/Elemento
rm -rf ~/Downloads/volantes-cursors
echo '*****************DONE!*****************'
