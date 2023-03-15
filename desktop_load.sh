#!/bin/bash
# init
echo 'Load Cinnamon Desktop config'
dconf load /org/cinnamon/ < cinnamon_desktop_backup
echo 'Done!'
