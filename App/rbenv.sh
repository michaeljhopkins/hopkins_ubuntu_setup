#!/usr/bin/env bash
git clone git://github.com/sstephenson/rbenv.git /home/m/.rbenv
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo "export PATH=\"\$HOME/.rbenv/bin:\$PATH\"" >> "/home/m/.zshrc"
echo "eval \"\$\(rbenv init -\)\"" >> "/home/m/.zshrc"
echo "export PATH=\"\$HOME/.rbenv/plugins/ruby-build/bin:\$PATH\"" >> "/home/m/.zshrc"
source ~/.zshrc
rbenv install -v 2.2.1
rbenv global 2.2.1
echo "gem: --no-document" > /home/m/.gemrc
gem install bundler
gem install rails