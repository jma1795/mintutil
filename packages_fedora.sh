#Increase Speed + update mirrors
echo 'nameserver 8.8.8.8' >> /etc/resolv.conf
systemctl restart NetworkManager

#RPM Fusion rinstall

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Update
sudo dnf -y update && dnf -y upgrade


#Native packages
dnf install cheese gnome-software grub-customizer neofetch powertop tlp tlp-rdw xsensors powerline 

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


