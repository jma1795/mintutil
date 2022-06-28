#!/bin/bash
# init
echo "****************************************************"
echo "**** Welcome to Joe's 'Mint Optimization Script ****"
echo "****************************************************"
neofetch
echo "***************************************"
echo "** What Script would you like to run?**"
echo "***************************************"

function pause(){
   read -p "$*"
}
################################################################ 
PS3='Option:'
foods=("Pre-Setup" "Appearance" "Packages" "Optimizations" "Quit")
select fav in "${foods[@]}"; do
    case $fav in
        "Pre-Setup")
            echo "****Installing $fav git Package****"
	    # run package installer
bash Pre-setup.sh
            echo "****Packages Installed****"
pause 'Press [Enter] key to continue...'
bash setup.sh
#*****************************************************************

            ;;
        "Appearance")
            echo "****Setting up $fav****"
	    # run package installer
bash theme.sh
            echo "****Theme Installed****"
pause 'Press [Enter] key to continue...'
bash setup.sh
#*****************************************************************
            
            ;;
        "Packages")
            echo "****Installing $fav and Apps****"
	    # run package installer
bash packages.sh
echo "****Packages Installed****"
pause 'Press [Enter] key to continue...'
bash setup.sh
#*****************************************************************
            ;;
        "Optimizations")
            echo "****Installing $fav****"
	    # run package installer
bash optimize.sh
echo "****System Optimized****"
pause 'Press [Enter] key to continue...'
bash setup.sh
#*****************************************************************

#*****************************************************************
	    break
            ;;
	"Quit")
	    echo "*****Script Terminated****"
        echo "*****System Reboot Suggested****"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done
