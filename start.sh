#!/usr/bin/env bash
now=$(date +"%Y-%m-%d-%S")
filename="_log-$now.log"
touch "/home/m/hopkins_ubuntu_setup/Storage/$filename"
chmod 777 "/home/m/hopkins_ubuntu_setup/Storage/$filename"
. /home/m/hopkins_ubuntu_setup/_.sh | tee "/home/m/hopkins_ubuntu_setup/Storage/$filename"
