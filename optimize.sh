function pause(){
   read -p "$*"
}
################################################################ 
 echo "****Optimizing Firewall and Security****"
	    # run package installer
	    
#setting up firewall	    
sudo apt install ufw

sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

pause 'Press [Enter] key to continue...'
