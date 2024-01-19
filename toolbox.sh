#!/bin/bash

echo "*************************************"
echo "*Warthunder's Ultimate Linux Toolbox*"
echo "*************************************"
# By Warthunder. (https://github.com/jma1795 GNU/General Public License version 2.0)



#Display System Information
hostnamectl | grep 'Operating System'
lscpu | grep 'Model name'|
echo "Memory:" && free -m | awk '/^Mem:/{printf("%.1fGb\n",$2/1000)}'
echo "GPU:" && lspci | grep VGA
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

PS3='What do you want to do?'
setup=("System Setup" "Install Apps" "Power Management" "Security" "Fixes" "Quit")
select fav in "${setup[@]}"; do
    case $fav in
        "System Setup")
            echo "***Running $fav script***"
	    #Run Script
        bash pre-setup.sh
	    break
            ;;
        "Install Apps")
            echo "***Running $fav script***"
	    #Run Script
        bash packages.sh
	    break
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
        bash firewall.sh
	    break
            ;;
        "Fixes")
            echo "***Running $fav script***"
	    #Run Script
        bash gaming.sh
	    break
            ;;
	"Quit")
	    echo "***Program Terminated***"
	    exit
	    ;;
        *) echo "***invalid option $REPLY***";;
    esac
done
