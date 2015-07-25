#!/usr/bin/env bash

git clone git://github.com/zsh-users/zsh-syntax-highlighting.git /home/m/.oh-my-zsh/custom/plugins

echo "alias zshrc=\"sudo subl ~/.zshrc\"" >> "/home/m/hopkins_ubuntu_setup/Templates/.zshrc.conf"
echo "alias nano=\"sudo subl\"" >> "/home/m/hopkins_ubuntu_setup/Templates/.zshrc.conf"
echo "alias serve=\"sudo ~/Scripts/serve.sh\"" >> "/home/m/hopkins_ubuntu_setup/Templates/.zshrc.conf"
echo "alias edithosts=\"sudo subl /etc/hosts\"" >> "/home/m/hopkins_ubuntu_setup/Templates/.zshrc.conf"
echo "alias larafresh=\"rm -rf Vendor node_modules && composer install && npm install && php artisan clear-compiled && php artisan route:clear && php artisan migrate:reload && php artisan route:cache\"" >> "/home/m/hopkins_ubuntu_setup/Templates/.zshrc.conf"
