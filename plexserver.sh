#!bin/bash

# Install Plex Media Server and ExpressVPN if you want it
update-all
install apt-transport-https
curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add -
echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
sudo apt update
install plexmediaserver
sudo cat hostname -I >> /boot/cmdline.txt
wget https://download.expressvpn.xyz/clients/linux/expressvpn_2.5.0.505-1_armhf.deb
sudo dpkg -i expressvpn_2.5.0.505-1_armhf.deb
rm expressvpn_2.5.0.505-1_armhf.deb
echo "You need to get your activation code from expressvpn.com"
expressvpn activate
expressvpn autoconnect true
install transmission transmission-daemon
sudo reboot now
