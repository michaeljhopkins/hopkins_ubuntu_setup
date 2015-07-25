#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
echo "export NVM_DIR=\"/home/m/.nvm\"" >> "/home/m/hopkins_ubuntu_setup/Templates/.zshrc.conf"
echo "\[ \-s \"\$NVM_DIR\/nvm\.sh\" \] \&\& \. \"\$NVM_DIR/nvm.sh\"  \# This loads nvm"
source /home/m/hopkins_ubuntu_setup/Templates/.zshrc.conf
nvm install stable
nvm use stable
nvm alias default stable
source /home/m/hopkins_ubuntu_setup/Templates/.zshrc.conf
npm install -g bower grunt-cli gulp