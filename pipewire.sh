#!/bin/bash
# init

#install pre-requisits
sudo apt install -y libfdk-aac2 libldacbt-{abr,enc}2 libopenaptx0

#install pipewire
sudo apt install -y libspa-0.2-bluetooth pipewire-audio-client-libraries pipewire-media-session- wireplumber

#start and enable services for POST reboot
systemctl --user --now enable wireplumber.service
systemctl --user --now restart wireplumber.service
echo 'Reboot is suggested'
