#!/bin/bash

echo "***********************************"
echo "*Joe's Ultimate Linux Mint Toolbox*"
echo "***********************************"
#Shenanigans, comment out if problems exist


neofetch
#Display Date and Time, Install Date/Age
now="$(date +'%Y-%m-%d')"
printf "Current date: %s\n" "$now"

install="$(stat / | grep "Birth" | sed 's/Birth: //g' | cut -b 2-11)"
printf "Install date: %s\n" "$install"

#Calculate age since Installed
#In days
aged="$(( ($(date --date=$now +%s) - $(date --date=$install +%s) )/(60*60*24) ))"
printf "Install age in days: %s\n" "$aged"

#Display System Info
echo "*********************************"
for d in system-manufacturer system-product-name system-serial-number bios-release-date bios-version 
do    
  echo "${d^} : " $(sudo dmidecode -s $d)
echo "*********************************"
done
#End of Shenanigans

PS3='Choose Script to run: '
setup=("Setup" "Software Packages" "Laptop Power Management" "Firewall" "Audio" "Coding" "Quit")
select fav in "${setup[@]}"; do
    case $fav in
        "Setup")
            echo "***Running $fav script***"
	    #Run Script
        bash pre-setup.sh
	    break
            ;;
        "Software Packages")
            echo "***Running $fav script***"
	    #Run Script
        bash packages.sh
	    break
            ;;
        "Laptop Power Management")
            echo "***Running $fav script***"
	    #Run Script
        bash power.sh
	    break
            ;;
        "Firewall")
            echo "***Running $fav script***"
	    #Run Script
        bash firewall.sh
	    break
            ;;
        "Gaming")
            echo "***Running $fav script***"
	    #Run Script
        bash gaming.sh
	    break
            ;;
        "Coding")
            echo "***Running $fav script***"
	    #Run Script
        bash coding.sh
	    break
            ;;
	"Quit")
	    echo "***Program Terminated***"
	    exit
	    ;;
        *) echo "***invalid option $REPLY***";;
    esac
done
