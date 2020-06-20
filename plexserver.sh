#!bin/bash

# Install Plex Media Server and ExpressVPN if you want it
update-all
install apt-transport-https
curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add -
echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
sudo apt update
install plexmediaserver
sudo cat hostname -I >> /boot/cmdline.txt

sudo reboot now
