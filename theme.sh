#Make Theme Directories if they don't exist
mkdir ~/.icons
mkdir ~/.themes

#Get Themes
echo '*****************Downloading Themes*****************'
cd ~/Downloads
echo '*****************Getting Icons*****************'
git clone https://github.com/cbrnix/Flatery.git
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
curl -L https://github.com/ful1e5/Bibata_Cursor/releases/download/v1.1.2/Bibata.tar.gz --output ~/Downloads/Bibata/Bibata.tar.gz
tar -xf Bibata.tar.gz
cd ~/Downloads

echo '*****************Installing Icons*****************'
mv ~/Downloads/Flatery/* ~/.icons/ 
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

#Cleanup
echo '*****************Cleaning up*****************'
rm -rf ~/Downloads/Flatery/
rm -rf ~/Downloads/Bibata/
rm -rf ~/Downloads/Marwaita/
rm -rf ~/Downloads/Marwaita-manjaro/
rm -rf ~/Downloads/Marwaita-EndeavourOs/
rm -rf ~/Downloads/Marwaita-ubuntu/
rm -rf ~/Downloads/Marwaita-Zorin/
rm -rf ~/Downloads/Marwaita-Pop_os/
rm -rf ~/Downloads/Marwaita-Debian/
rm -rf ~/Downloads/Marwaita-peppermint/
rm -rf ~/Downloads/Marwaita-Mint/
rm -rf ~/Downloads/Marwaita-OSX/
echo '*****************DONE!*****************'
