#Update
sudo nala update && nala upgrade -y


#Native packages
sudo nala install -y cheese lollypop

#Flatpaks
flatpak install -y flathub com.google.Chrome
flatpak install -y flathub org.gnome.Geary
flatpak install -y flathub com.sindresorhus.Caprine
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.spotify.Client
flatpak install -y flathub net.cozic.joplin_desktop
flatpak install -y flathub com.github.tchx84.Flatseal
sudo flatpak override --filesystem=$HOME/.themes


#setup terminal
cd config
sudo cp bash_prompt ~/.bash_prompt
sudo cp bashrc ~/.bashrc
cd ..

#fix geary on low-res displays
cd config
sudo cp gtk.css ~/.config/gtk-3.0/gtk.css
cd ..
