#!/bin/bash
# init
function pause(){
   read -p "$*"
}
################################################################ 
PS3='Choose Base-distro: '
foods=("Debian" "Fedora" "Arch" "Quit")
select fav in "${foods[@]}"; do
    case $fav in
        "Debian")
            echo "****Installing $fav git Package****"
	    # run package installer
sudo apt install -y git make inkscape xcursorgen
#*****************************************************************
            echo "****Packages Installed****"
            ;;
        "Fedora")
            echo "****Installing $fav git Package****"
	    # run package installer
sudo dnf install -y git make inkscape xcursorgen
#*****************************************************************
            echo "****Packages Installed****"
            ;;
        "Arch")
            echo "****Installing $fav git Package****"
	    # run package installer
sudo pacman -Sy git make inkscape xcursorgen
#*****************************************************************
            echo "****Packages Installed****"
	    break
            ;;
	"Quit")
	    echo "*****Script Terminated****"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
pause 'Press [Enter] key to continue...'
exit
done

