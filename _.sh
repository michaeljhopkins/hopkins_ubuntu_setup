
#!/usr/bin/env bash
# This script is written to "believe" that it is this file is currently in /home/m/hopkins-ubuntu-setup/

# Before installing zsh we're going to finish our entire .zshrc file. First by copying from the template
cp ./Templates/.zshrc.conf /home/m/.zshrc

# Copy serve.sh shell file
mkdir /home/m/Scripts
cp ./Templates/serve.sh /home/m/Scripts/serve.sh
echo "export PATH=\"\$HOME/Scripts:\$HOME/.local/bin:\$PATH" >> "/home/m/.zshrc"

# Install the first part of the Laravel/Settler package, the base packages
. ./vendor/laravel-settler/components/basePackages.sh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Run the rest of laravel settler
. ./vendor/laravel-settler/settler.sh

# Run the desired code from ubuntu-bash-script-first-install-master

. ./vendor/ubuntu-bash-script-first-intall-master/desktop.sh

# Install them apps!

. ./App/git.sh

. ./App/googleChrome.sh
. ./App/grubCustomizer.sh
. ./App/nvm.sh
. ./App/phpStorm.sh
. ./App/rbenv.sh
. ./App/spotify.sh
. ./App/sublimeText3.sh
. ./App/teamViewer.sh
. ./App/terminology.sh
. ./App/themes.sh
. ./App/virtualbox.sh

sudo curl http://defunkt.io/hub/standalone -sLo /usr/bin/hub && sudo chmod +x /usr/bin/hub

# We finish the run by adding out the final line of the zshrc
echo "source \$ZSH/oh-my-zsh.sh" >> "/home/m/.zshrc"
