#Update
sudo nala update && nala upgrade -y


#Native packages
sudo nala install -y cheese lollypop gnome-firmware

#Flatpaks
flatpak install -y flathub com.google.Chrome
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub net.cozic.joplin_desktop
flatpak install -y flathub com.github.tchx84.Flatseal
sudo flatpak override --filesystem=$HOME/.themes

#Fonts
cd ~/Downloads
mkdir ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Meslo.zip
unzip -d ~/.fonts/ Meslo.zip 
