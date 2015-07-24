#!/usr/bin/env bash

git clone git://github.com/zsh-users/zsh-syntax-highlighting.git /home/m/.oh-my-zsh/custom/plugins

echo "alias zshrc=\"sudo subl ~/.zshrc\"" >> "/home/m/.zshrc"
echo "alias nano=\"sudo subl\"" >> "/home/m/.zshrc"
echo "alias serve=\"sudo ~/Scripts/serve.sh\"" >> "/home/m/.zshrc"
echo "alias edithosts=\"sudo subl /etc/hosts\"" >> "/home/m/.zshrc"
echo "alias larafresh=\"rm -rf vendor node_modules && composer install && npm install && php artisan clear-compiled && php artisan route:clear && php artisan migrate:reload && php artisan route:cache\"" >> "/home/m/.zshrc"
