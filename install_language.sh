#!/bin/bash

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# go
brew install go
go get github.com/knqyf263/pet
go get github.com/mkchoi212/fac
go get github.com/odeke-em/drive/cmd/drive
go get github.com/google/skicka

# rust
brew install rust

# node
nodebrew setup
set -x PATH $HOME/.nodebrew/current/bin $PATH
nodebrew install-binary latest
nodebrew use latest

# npm
npm install gtop -g
npm install zenn-cli -g
npm install @marp-team/marp-cli -g
npm install carbon-now-cli -g
npm install gitignore.cli -g
npm install @google/clasp -g
npm install gitmoji-cli -g

# python
pip install --upgrade pip
brew install pipenv
brew install pyenv
