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
echo 'The default value is 60 for HDDs, setting to 25 for SSDs'

echo '# Reduce the inclination to swap
vm.swappiness=25' >> /etc/sysctl.conf


#Optional: set noatime
echo 'setting noatime for SSDs'
sudo sed -i 's/ errors=remount-ro/ noatime,errors=remount-ro/' /etc/fstab
echo "****Task Complete a System Reboot is suggested****"

pause 'Press [Enter] key to continue...'
#*****************************************************************


#Optional: set better sound profile
sudo cp /etc/pulse/daemon.conf /etc/pulse/daemon.conf.backup

echo '; default-sample-format = float32le
; default-sample-rate = 48000
; alternate-sample-rate = 44100
; default-sample-channels = 2
; default-channel-map = front-left,front-right
; default-fragments = 2
; default-fragment-size-msec = 125
; resample-method = speex-float-10
; enable-lfe-remixing = no
; high-priority = yes
; nice-level = -11
; realtime-scheduling = yes
; realtime-priority = 9
; rlimit-rtprio = 9' >> /etc/pulse/daemon.conf

pulseaudio -k
            echo "****Optimization Complete!****"
	    # run package installer
bash setup.sh
#*****************************************************************
