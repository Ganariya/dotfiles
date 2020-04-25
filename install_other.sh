#!/bin/bash


# fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

fish

# powerline
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
chmod +x install.sh
./install.sh
cd ..
rm -rf fonts

# fisher
fisher add oh-my-fish/theme-bobthefish
fisher add jethrokuan/z

# https://qiita.com/macololidoll/items/1c369217c6203dd479bd
# starship
brew install starship
# ここでfish用に設定がいる

