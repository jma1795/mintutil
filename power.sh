#!/bin/bash
# init

sudo nala install -y tlp tp-smapi-dkms acpi-call-dkms smartmontools linux-tools-generic powertop

mv ~/Downloads/joecinnamon-main/power/power /etc/pm/power.d/power
