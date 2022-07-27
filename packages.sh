#Update
sudo apt -y update && apt -y upgrade


#Native packages
sudo nala install -y cheese neofetch python
sudo pip install system-monitoring-center
system-monitoring-center

#Flatpaks
flatpak install -y flathub com.google.Chrome
flatpak install -y flathub org.gnome.Evolution
flatpak install -y flathub com.sindresorhus.Caprine
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.spotify.Client
flatpak install -y flathub net.cozic.joplin_desktop
flatpak install -y flathub com.github.tchx84.Flatseal
sudo flatpak override --filesystem=$HOME/.themes

#terminal
echo '#POWERLINE' >> ~/.bashrc
echo 'powerline-daemon -q' >> ~/.bashrc
echo 'POWERLINE_BASH_CONTINUATION=1' >> ~/.bashrc
echo 'POWERLINE_BASH_SELECT=1' >> ~/.bashrc
echo 'source /usr/share/powerline/bindings/bash/powerline.sh' >> ~/.bashrc
