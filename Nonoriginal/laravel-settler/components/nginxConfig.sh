#!/usr/bin/env bash
sudo rm /etc/nginx/fastcgi_params
sudo cp /home/m/hopkins_ubuntu_setup/Templates/fastcgi_params.conf /etc/nginx/fastcgi_params

# Set The Nginx & PHP-FPM User

sudo sed -i "s/user www-data;/user m;/" /etc/nginx/nginx.conf
sudo sed -i "s/# server_names_hash_bucket_size.*/server_names_hash_bucket_size 64;/" /etc/nginx/nginx.conf

sudo sed -i "s/user = www-data/user = m/" /etc/php5/fpm/pool.d/www.conf
sudo sed -i "s/group = www-data/group = m/" /etc/php5/fpm/pool.d/www.conf

sudo sed -i "s/listen\.owner.*/listen.owner = m/" /etc/php5/fpm/pool.d/www.conf
sudo sed -i "s/listen\.group.*/listen.group = m/" /etc/php5/fpm/pool.d/www.conf
sudo sed -i "s/;listen\.mode.*/listen.mode = 0666/" /etc/php5/fpm/pool.d/www.conf

sudo service nginx restart
sudo service php5-fpm restart

# Add Vagrant User To WWW-Data

sudo usermod -a -G www-data m
id m
groups m
