#Make Theme Directories if they don't exist
mkdir /usr/share/icons
mkdir /usr/share/icons

#Get Themes
echo '*****************Downloading Themes*****************'
cd ~/Downloads
git clone https://github.com/cbrnix/Newaita-reborn.git
git clone https://github.com/darkomarko42/Elemento.git
mkdir Bibata
cd ~/Downloads/Bibata
curl -L https://github.com/ful1e5/Bibata_Cursor/releases/download/v1.1.2/Bibata.tar.gz --output ~/Downloads/Bibata.tar.gz
tar -xf Bibata.tar.gz
cd ~/Downloads
echo '*****************Installing Themes*****************'
mv ~/Downloads/Newaita-reborn/* /usr/share/icons/ 
mv ~/Downloads/Elemento/* /usr/share/themes/
mv ~/Downloads/Bibata/* /usr/share/icons/ 


#Setting Themes
echo '*****************Attempting to Auto-setting Themes*****************'

gsettings set org.gnome.desktop.interface gtk-theme 'Elemento Dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Origonal-Classic'
sudo flatpak override --filesystem=$HOME/.themes
gsettings set org.cinnamon.theme name 'Elemento Dark'
gsettings set org.cinnamon.desktop.interface gtk-theme "Elemento Dark"
gsettings set org.cinnamon.desktop.wm.preferences theme "Elemento Dark"
gsettings set org.cinnamon.desktop.interface icon-theme 'Newaita-reborn-dark'

#Cleanup
echo '*****************Cleaning up*****************'
rm -rf ~/Downloads/Newaita-reborn
rm -rf ~/Downloads/Elemento
rm -rf ~/Downloads/Bibata
echo '*****************DONE!*****************'
