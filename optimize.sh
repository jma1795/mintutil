function pause(){
   read -p "$*"
}
################################################################ 
 echo "****Optimizing Sytem for SSD storage****"
	    # run package installer
#Setting up Trim as a daily Job
sudo mkdir -v /etc/systemd/system/fstrim.timer.d
sudo touch /etc/systemd/system/fstrim.timer.d/override.conf
echo '[Timer]
OnCalendar=
OnCalendar=daily' >> /etc/systemd/system/fstrim.timer.d/override.conf

# Reduce the inclination to swap
cat /proc/sys/vm/swappiness
pause 'The default value is 60, however you should change it to 25 for SSDs. Press [Enter] key to continue...'

echo '# Reduce the inclination to swap
vm.swappiness=25' >> /etc/sysctl.conf


#Optional: set noatime
sudo sed -i 's/ errors=remount-ro/ noatime,errors=remount-ro/' /etc/fstab
echo "****Task Complete a System Reboot is suggested****"

pause 'Press [Enter] key to continue...'
#*****************************************************************
            echo "****Packages Installed****"
	    # run package installer
bash setup.sh
#*****************************************************************
