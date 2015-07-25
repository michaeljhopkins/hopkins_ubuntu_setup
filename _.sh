
#!/usr/bin/env bash
# This script is written to "believe" that it is this file is currently in /home/m/hopkins_ubuntu_setup/

# Before installing zsh we're going to finish our entire .zshrc file. First by copying from the template

# Copy serve.sh shell file
mkdir /home/m/Scripts
cp /home/m/hopkins_ubuntu_setup/Templates/serve.sh /home/m/Scripts/serve.sh
echo "export PATH=\"\$HOME/Scripts:\$HOME/.local/bin:\$PATH\"" >> "/home/m/hopkins_ubuntu_setup/Templates/.zshrc.conf"

# Install the first part of the Laravel/Settler package, the base packages
. /home/m/hopkins_ubuntu_setup/Vendor/laravel-settler/components/basePackages.sh

# Run the rest of laravel settler
. /home/m/hopkins_ubuntu_setup/Vendor/laravel-settler/settler.sh

# Run the desired code from ubuntu-bash-script-first-install-master

. /home/m/hopkins_ubuntu_setup/Vendor/ubuntu-bash-script-first-intall-master/desktop.sh

# Install them apps!

. /home/m/hopkins_ubuntu_setup/App/git.sh

. /home/m/hopkins_ubuntu_setup/App/googleChrome.sh
. /home/m/hopkins_ubuntu_setup/App/grubCustomizer.sh
. /home/m/hopkins_ubuntu_setup/App/nvm.sh
. /home/m/hopkins_ubuntu_setup/App/phpStorm.sh
. /home/m/hopkins_ubuntu_setup/App/rbenv.sh
. /home/m/hopkins_ubuntu_setup/App/spotify.sh
. /home/m/hopkins_ubuntu_setup/App/sublimeText3.sh
. /home/m/hopkins_ubuntu_setup/App/teamViewer.sh
. /home/m/hopkins_ubuntu_setup/App/terminology.sh
. /home/m/hopkins_ubuntu_setup/App/themes.sh
. /home/m/hopkins_ubuntu_setup/App/virtualbox.sh

sudo curl http://defunkt.io/hub/standalone -sLo /usr/bin/hub && sudo chmod +x /usr/bin/hub

# We finish the run by adding out the final line of the zshrc
echo "source \$ZSH/oh-my-zsh.sh" >> "/home/m/hopkins_ubuntu_setup/Templates/.zshrc.conf"
rm -f /home/m/.zshrc
cp /home/m/hopkins_ubuntu_setup/Templates/.zshrc.conf /home/m/.zshrc
