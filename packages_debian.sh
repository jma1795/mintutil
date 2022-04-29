#Update
sudo apt -y update && apt -y upgrade


#Native packages
apt install cheese gnome-software grub-customizer neofetch powertop tlp tlp-rdw xsensors powerline flatpak gnome-software-plugin-flatpak

#Flatpaks
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub com.google.Chrome
flatpak install -y flathub org.gnome.Evolution
flatpak install -y flathub com.sindresorhus.Caprine
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.spotify.Client
flatpak install -y flathub net.cozic.joplin_desktop
#power management
systemctl mask power-profiles-daemon
powertop --auto-tune

mv powertop.service /etc/systemd/system
systemctl daemon-reload
systemctl enable powertop.service

#terminal
echo '#POWERLINE
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source /usr/share/powerline/bindings/bash/powerline.sh' >> ~/.bashrc


