#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
echo "export NVM_DIR=\"/home/m/.nvm\"" >> "/home/m/.zshrc"
echo "\[ \-s \"\$NVM_DIR\/nvm\.sh\" \] \&\& \. \"\$NVM_DIR/nvm.sh\"  \# This loads nvm"
source /home/m/.zshrc
nvm install stable
nvm use stable
nvm alias default stable
source /home/m/.zshrc
npm install -g bower grunt-cli gulp