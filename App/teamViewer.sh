#!/usr/bin/env bash

wget http://download.teamviewer.com/download/teamviewer_linux.deb -O teamviewer.deb
sudo apt-get install -y ia32-libs-gtk
dpkg -i teamviewer.deb
sudo rm -f teamviewer.deb
