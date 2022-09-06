function pause(){
   read -p "$*"
}
################################################################ 
 echo "****Optimizing Sytem for SSD storage****"
	    # run package installer

# Reduce the inclination to swap
cat /proc/sys/vm/swappiness
echo 'The default value is 60 for HDDs, setting to 25 for SSDs'

echo '# Reduce the inclination to swap
vm.swappiness=25' >> /etc/sysctl.conf

#Optional: set noatime
echo 'setting noatime for SSDs'
sudo sed -i 's/ errors=remount-ro/ noatime,errors=remount-ro/' /etc/fstab
echo "****Task Complete a System Reboot is suggested****"

pause 'Press [Enter] key to continue...'
