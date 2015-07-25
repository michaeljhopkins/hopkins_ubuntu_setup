#!/usr/bin/env bash
sudo add-apt-repository ppa:indicator-brightness/ppa -y
#tlp to save battery
sudo add-apt-repository ppa:linrunner/tlp -y
#Flux to project your eye  when working at night
sudo add-apt-repository ppa:kilian/f.lux -y

sudo apt-get install -y --force-yes wget curl nginx nodejs npm git
sudo apt-get install -y --force-yes mongodb-org
sudo apt-get install -y --force-yes lsb-release bind9 rsync ntp openssh-server sudo sysstat 
sudo apt-get install -y --force-yes rcs liberror-perl libwww-perl git-core libnet-ssleay-perl tcpdump strace htop
sudo apt-get install -y --force-yes nginx-extras  memcached
sudo apt-get install -y --force-yes guake terminator zim filezilla

sudo apt-get install -y --force-yes chromium-browser scite synaptic nautilus-open-terminal

#Thinkpad extra
#http://askubuntu.com/questions/285434/is-there-a-power-saving-application-similar-to-jupiter
sudo apt-get install -y --force-yes tp-smapi-dkms acpi-call-tools tlp tlp-rdw smartmontools ethtool
sudo apt-get install -y --force-yes indicator-brightness fluxgui
sudo apt-get install -y --force-yes skype vlc