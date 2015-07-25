#!/usr/bin/env bash

wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh
# This enables NVM without a logout/login
export NVM_DIR="/home/m/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Install a node and alias
nvm install stable
nvm alias default stable
npm install -g bower grunt-cli gulp