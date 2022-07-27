#!/bin/bash
# init

sudo nala update
sudo nala install -y tlp tp-smapi-dkms acpi-call-dkms smartmontools linux-tools-generic powertop

sudo tlp start
sudo systemctl enable tlp --now

sudo powertop --auto-tune

cat << EOF | sudo tee /etc/systemd/system/powertop.service
[Unit]
Description=PowerTOP auto tune

[Service]
Type=oneshot
Environment="TERM=dumb"
RemainAfterExit=true
ExecStart=/usr/sbin/powertop --auto-tune

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable powertop.service

sudo add-apt-repository -y ppa:linuxuprising/apps
sudo nala update
sudo nala install tlpui
