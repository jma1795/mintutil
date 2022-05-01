#Make Theme Directories if they don't exist
mkdir ~/.icons
mkdir ~/.themes
#Get Themes
echo '*****************Getting Themes*****************'
cd ~/Downloads
git clone https://github.com/cbrnix/Newaita-reborn.git
git clone https://github.com/darkomarko42/Elemento.git
git clone https://github.com/yeyushengfan258/WinSur-dark-cursors.git


mv ~/Downloads/Newaita-reborn/* ~/.icons/ 
mv ~/Downloads/Elemento/* ~/.themes/

cd WinSur-dark-cursors/
./install.sh

#Setting Themes
echo '*****************Auto-setting Themes*****************'

gsettings set org.gnome.desktop.interface gtk-theme 'Elemento Dark'
gsettings set org.gnome.desktop.interface cursor-theme 'WinSur-dark-cursors'
sudo flatpak override --filesystem=$HOME/.themes
gsettings set org.cinnamon.theme name 'Elemento Dark'
gsettings set org.cinnamon.desktop.interface gtk-theme "Elemento Dark"
gsettings set org.cinnamon.desktop.wm.preferences theme "Elemento Dark"
gsettings set org.cinnamon.desktop.interface icon-theme 'Newaita-reborn-dark'

#Cleanup
echo '*****************Cleaning up*****************'
rm -rf ~/Downloads/Newaita-reborn
rm -rf ~/Downloads/Elemento
rm -rf ~/Downloads/WinSur-dark-cursors
echo '*****************DONE!*****************'
