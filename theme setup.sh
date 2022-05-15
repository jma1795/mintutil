#Make Theme Directories if they don't exist
mkdir ~/.icons
mkdir ~/.themes

#Get Themes
echo '*****************Downloading Themes*****************'
cd ~/Downloads
echo '*****************Getting Newaita-Reborn Icons*****************'
git clone https://github.com/cbrnix/Newaita-reborn.git
echo '*****************Getting Elemento GTK-Theme (all Colors)*****************'
git clone https://github.com/darkomarko42/Elemento.git
git clone https://github.com/darkomarko42/Elemento-slate.git
git clone https://github.com/darkomarko42/Elemento-Strawberry.git
git clone https://github.com/darkomarko42/Elemento-cocoa.git
git clone https://github.com/darkomarko42/Elemento-Orange.git
git clone https://github.com/darkomarko42/Elemento-grape.git
git clone https://github.com/darkomarko42/Elemento-bubblegum.git
git clone https://github.com/darkomarko42/Elemento-mint.git
git clone https://github.com/darkomarko42/Elemento-Lime.git
git clone https://github.com/darkomarko42/Elemento-Banana.git
echo '*****************Getting Bibata Cursors*****************'
mkdir Bibata
cd ~/Downloads/Bibata
curl -L https://github.com/ful1e5/Bibata_Cursor/releases/download/v1.1.2/Bibata.tar.gz --output ~/Downloads/Bibata.tar.gz
tar -xf Bibata.tar.gz

cd ~/Downloads
#git clone https://github.com/AdisonCavani/distro-grub-themes.git

echo '*****************Installing Icons*****************'
mv ~/Downloads/Newaita-reborn/* ~/.icons/ 
sudo mv ~/Downloads/Bibata/* /usr/share/icons
echo '*****************Installing Themes*****************'
#mv ~/Downloads/distro-grub-themes ~/
mv ~/Downloads/Elemento/* ~/.themes/
mv ~/Downloads/Elemento-slate/* ~/.themes/
mv ~/Downloads/Elemento-Strawberry/* ~/.themes/
mv ~/Downloads/Elemento-cocoa/* ~/.themes/
mv ~/Downloads/Elemento-Orange/* ~/.themes/
mv ~/Downloads/Elemento-grape/* ~/.themes/
mv ~/Downloads/Elemento-bubblegum/* ~/.themes/
mv ~/Downloads/Elemento-mint/* ~/.themes/
mv ~/Downloads/Elemento-Lime/* ~/.themes/
mv ~/Downloads/Elemento-Banana/* ~/.themes/

#Setting Themes
echo '*****************Attempting to Auto-set Theme*****************'

gsettings set org.gnome.desktop.interface gtk-theme 'Elemento-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Classic'
sudo flatpak override --filesystem=$HOME/.themes
gsettings set org.cinnamon.theme name 'Elemento-dark'
gsettings set org.cinnamon.desktop.interface gtk-theme "Elemento-dark"
gsettings set org.cinnamon.desktop.wm.preferences theme "Elemento-dark"
gsettings set org.cinnamon.desktop.interface icon-theme 'Newaita-reborn-dark'

#Cleanup
echo '*****************Cleaning up*****************'
rm -rf ~/Downloads/*
echo '*****************DONE!*****************'
