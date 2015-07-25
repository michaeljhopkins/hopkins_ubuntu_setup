#!/usr/bin/env bash
# Determine The Latest Version of VirtualBox
wget http://download.virtualbox.org/virtualbox/LATEST.TXT
latest=`cat LATEST.TXT`

wget http://download.virtualbox.org/virtualbox/$latest/MD5SUMS
codename=`lsb_release -sc`
md5line=`grep -e "Debian~${codename}_amd64" MD5SUMS`
package=`echo $md5line | cut -d\* -f2`

# Download and Install VirtualBox
wget http://download.virtualbox.org/virtualbox/$latest/$package
sudo dpkg -i $package
sudo rm $package