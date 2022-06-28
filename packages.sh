#Update
sudo apt -y update && apt -y upgrade


#Native packages
nala install cheese neofetch powertop tlp tlp-rdw


#Flatpaks
flatpak install -y flathub com.google.Chrome
flatpak install -y flathub org.gnome.Evolution
flatpak install -y flathub com.sindresorhus.Caprine
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.spotify.Client
flatpak install -y flathub net.cozic.joplin_desktop
#power management
sudo tlp
sudo powertop
sudo powertop --calibrate
sudo powertop --auto-tune

#terminal
echo '#POWERLINE
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source /usr/share/powerline/bindings/bash/powerline.sh' >> ~/.bashrc


