#Update
sudo nala update && nala upgrade -y


#Native packages
sudo nala install -y cheese lollypop gnome-firmware psensor xsensors

#Flatpaks
flatpak install -y flathub com.google.Chrome com.discordapp.Discord net.cozic.joplin_desktop com.github.tchx84.Flatseal

sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --filesystem=$HOME/.icons

#Fonts
cd ~/Downloads
mkdir ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Meslo.zip
unzip -d ~/.fonts/ Meslo.zip 
