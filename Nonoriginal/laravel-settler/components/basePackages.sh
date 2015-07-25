#!/usr/bin/env bash
# Update Package List

sudo apt-get update

# Update System Packages
sudo apt-get -y upgrade

# Force Locale

echo "LC_ALL=en_US.UTF-8" >> /etc/default/locale
sudo locale-gen en_US.UTF-8

# Install Some PPAs

sudo apt-get install -y software-properties-common curl

sudo apt-add-repository ppa:nginx/stable -y
sudo apt-add-repository ppa:rwky/redis -y
sudo apt-add-repository ppa:ondrej/php5-5.6 -y


curl -s https://packagecloud.io/gpg.key | sudo apt-key add -
echo "deb http://packages.blackfire.io/debian any main" | sudo tee /etc/apt/sources.list.d/blackfire.list


# Update Package Lists

sudo apt-get update

# Install Some Basic Packages

sudo apt-get install -y build-essential dos2unix gcc git libmcrypt4 libpcre3-dev make python2.7-dev python-pip re2c
supervisor unattended-upgrades whois libreadline-dev libffi-dev

# Set My Timezone

sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime

# Install PHP Stuffs

sudo apt-get install -y php5-cli php5-dev php-pear php5-mysqlnd php5-pgsql php5-sqlite php5-apcu php5-json php5-curl php5-gd php5-gmp php5-imap php5-mcrypt php5-memcached

# Make MCrypt Available

sudo ln -s /etc/php5/conf.d/mcrypt.ini /etc/php5/mods-available
sudo php5enmod mcrypt