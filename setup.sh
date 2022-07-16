#!/bin/bash
# init
echo "****************************************************"
echo "**** Welcome to Joe's 'Mint Optimization Script ****"
echo "****************************************************"
bash date.sh
bash sysinfo2.sh
echo "***************************************"
echo "** What Script would you like to run?**"
echo "***************************************"

function pause(){
   read -p "$*"
}
################################################################ 
PS3='Option:'
foods=("Initial Setup" "Power Management (Laptops Only)" "Packages" "Optimizations" "Quit")
select fav in "${foods[@]}"; do
    case $fav in
        "Initial Setup")
            echo "****Installing $fav git Package****"
	    # run package installer
bash Pre-setup.sh
            echo "****Packages Installed****"
pause 'Press [Enter] key to continue...'
bash setup.sh
#*****************************************************************
            ;;
        "Power Management (Laptops Only)")
            echo "****Setting up $fav****"
	    # run package installer
sudo nala install -y tlp tp-smapi-dkms acpi-call-dkms smartmontools linux-tools-generic
            echo "****Power Management Installed****"
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
	    break
            ;;
	"Quit")
	    echo "*****Script Terminated****"
        echo "*****System Reboot Suggested****"
	    exit
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done
