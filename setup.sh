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
foods=("All (Automatic)" "Initial Setup" "Power Management (Laptops Only)" "Packages" "Optimizations" "Quit")
select fav in "${foods[@]}"; do
    case $fav in
        "All (Automatic)")
pause 'Are you sure? Press [Enter] key to continue, press CTRL + C to end.'            
        echo "#########################"       
        echo "## Automating Install ##"
	    echo "#########################" 
        # run package installer
bash Pre-setup.sh
sudo nala install -y tlp tp-smapi-dkms acpi-call-dkms smartmontools linux-tools-generic
bash packages.sh
bash optimize.sh
        echo "#########################"       
        echo "## Automating Complete ##"
	    echo "#########################" 
pause 'Press [Enter] key to Restart...'
sudo reboot
exit
#*****************************************************************
            ;;
        "Initial Setup")
            echo "****Installing $fav git Package****"
	    # run package installer
bash Pre-setup.sh
        echo "#####################################"
        echo "## Pre-setup Scrip ran Sucessfully ##"
        echo "#####################################"
pause 'Press [Enter] key to continue...'
bash setup.sh
#*****************************************************************
            ;;
        "Power Management (Laptops Only)")
            echo "****Setting up $fav****"
	    # run package installer
sudo nala install -y tlp tp-smapi-dkms acpi-call-dkms smartmontools linux-tools-generic
        echo "##########################################"
        echo "# Power Management Scrip ran Sucessfully #"
        echo "##########################################"
pause 'Press [Enter] key to continue...'
bash setup.sh
#*****************************************************************

           ;;
        "Packages")
            echo "****Installing $fav and Apps****"
	    # run package installer
bash packages.sh
        echo "#####################################"
        echo "## Packages Script ran Sucessfully ##"
        echo "#####################################"
pause 'Press [Enter] key to continue...'
bash setup.sh
#*****************************************************************
            ;;
        "Optimizations")
            echo "****Installing $fav****"
	    # run package installer
bash optimize.sh
        echo "#####################################"
        echo "## Optimize Script ran Sucessfully ##"
        echo "#####################################"	
pause 'Press [Enter] key to continue...'
bash setup.sh
#*****************************************************************
	    break
            ;;
	"Quit")
        echo "################################################"
        echo "## Script Terminated. System Reboot Suggested ##"
        echo "################################################"	    
	    exit
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done
