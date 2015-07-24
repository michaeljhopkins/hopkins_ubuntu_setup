#!/usr/bin/env bash
cat /home/m/hopkins-ubuntu-setup/Templates/google.key | apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install -y google-chrome-beta
