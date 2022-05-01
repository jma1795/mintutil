#Make Theme Directories if they don't exist
mkdir ~/.icons
mkdir ~/.themes
#Get Themes
echo '*****************Getting Themes*****************'
cd ~/Downloads
git clone https://github.com/cbrnix/Newaita-reborn.git
git clone https://github.com/darkomarko42/Elemento.git
git clone https://github.com/varlesh/material-cursors.git

mv ~/Downloads/Newaita-reborn/* ~/.icons/ 
mv ~/Downloads/Elemento/* ~/.themes/

#Cleanup
echo '*****************Cleaning up*****************'
rm -rf ~/Downloads/Newaita-reborn
rm -rf ~/Downloads/Elemento

