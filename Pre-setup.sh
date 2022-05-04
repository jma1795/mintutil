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
sudo apt install -y git
#*****************************************************************
            echo "****Packages Installed****"
            ;;
        "Fedora")
            echo "****Installing $fav git Package****"
	    # run package installer
sudo dnf install -y git
#*****************************************************************
            echo "****Packages Installed****"
            ;;
        "Arch")
            echo "****Installing $fav git Package****"
	    # run package installer
sudo pacman -Sy git
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
#Username: jma1795
#Password: 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

git clone https://github.com/jma1795/Cinnamon-Configuration-and-themes.git
exit
done

