!/bin/bash
# init
function pause(){
   read -p "$*"
}
################################################################ 
PS3='Setting up Joecinnamon'
foods=("Pre-Setup" "Appearance" "Packages" "Quit")
select fav in "${foods[@]}"; do
    case $fav in
        "Pre-Setup")
            echo "****Installing $fav git Package****"
	    # run package installer
bash Pre-setup.sh
#*****************************************************************
            echo "****Packages Installed****"
            ;;
        "Appearance")
            echo "****Setting up $fav****"
	    # run package installer
bash theme.sh
#*****************************************************************
            echo "****Packages Installed****"
            ;;
        "Packages")
            echo "****Installing $fav and Apps****"
	    # run package installer
bash packages.sh
#*****************************************************************
            echo "****Packages and Apps Installed****"
	    break
            ;;
	"Quit")
	    echo "*****Script Terminated****"
        echo "*****System Reboot Suggested****"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
pause 'Press [Enter] key to continue...'
exit
done
