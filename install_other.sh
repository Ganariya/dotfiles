#!/bin/bash

# fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

# powerline
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
chmod +x install.sh
./install.sh
cd ..
rm -rf fonts

# tex
brew install --cask mactex
sudo tlmgr update --self --all
sudo tlmgr paper a4