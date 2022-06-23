#Make Theme Directories if they don't exist
mkdir ~/.icons
mkdir ~/.themes

#Get Themes
echo '*****************Downloading Themes*****************'
cd ~/Downloads
echo '*****************Getting Icons*****************'
sudo nala install pop-icon-theme
cd ..
echo '*****************Getting Themes*****************'
git clone https://github.com/darkomarko42/Marwaita.git
git clone https://github.com/darkomarko42/Marwaita-EndeavourOs
git clone https://github.com/darkomarko42/Marwaita-Pop_os
echo '*****************Getting Bibata Cursors*****************'
mkdir Bibata
cd ~/Downloads/Bibata
curl -L https://github.com/ful1e5/Bibata_Cursor/releases/download/v1.1.2/Bibata.tar.gz --output ~/Downloads/Bibata/Bibata.tar.gz
tar -xf Bibata.tar.gz
cd ~/Downloads

echo '*****************Installing Icons*****************'
sudo mv ~/Downloads/Bibata/* /usr/share/icons/

echo '*****************Installing Themes*****************'
mv ~/Downloads/Marwaita/* ~/.themes/
mv ~/Downloads/Marwaita-EndeavourOs/* ~/.themes/
mv ~/Downloads/Marwaita-Pop_os/* ~/.themes/
mv ~/Downloads/Marwaita-Mint/* ~/.themes/

#Cleanup
echo '*****************Cleaning up*****************'
rm -rf ~/Downloads/Bibata/
rm -rf ~/Downloads/Marwaita/
rm -rf ~/Downloads/Marwaita-EndeavourOs/
rm -rf ~/Downloads/Marwaita-Pop_os/
rm -rf ~/Downloads/Marwaita-Mint/
echo '*****************DONE!*****************'
