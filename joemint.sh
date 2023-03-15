#!/bin/bash

echo "*********************************"
echo "*Joe's Mint customization script*"
echo "*********************************"
bash date.sh
bash sysinfo2.sh

PS3='Choose Script to run: '
setup=("Pre-Setup" "Software" "Power Management" "Security" "Audio" "Appearance" "Quit")
select fav in "${setup[@]}"; do
    case $fav in
        "Pre-Setup")
            echo "***Installing prerequisitis***"
	    #Run Script
        bash pre-setup.sh
            ;;
        "Software")
            echo "***Running $fav script***"
	    #Run Script
        bash packages.sh
            ;;
        "Power Management")
            echo "***Running $fav script***"
	    #Run Script
        bash power.sh
	    break
            ;;
        "Security")
            echo "***Running $fav script***"
	    #Run Script
        bash power.sh
	    break
            ;;
        "Audio")
            echo "***Running $fav script***"
	    #Run Script
        bash pipewire.sh
	    break
            ;;
        "Appearance")
            echo "***Running $fav script***"
	    #Run Script
        bash theme.sh
	    break
            ;;
	"Quit")
	    echo "***Program Terminated***"
	    exit
	    ;;
        *) echo "***invalid option $REPLY***";;
    esac
done
