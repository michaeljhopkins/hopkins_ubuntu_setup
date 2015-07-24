#!/usr/bin/env bash
# Install MySQL

sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password secret"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password secret"
sudo apt-get install -y mysql-server-5.6

# Add Timezone Support To MySQL

mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql --user=root --password=secret mysql

# Install Blackfire

sudo apt-get install -y blackfire-agent blackfire-php

# Install A Few Other Things

sudo apt-get install -y redis-server memcached
