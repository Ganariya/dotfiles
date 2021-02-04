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

# rust
brew install rust

# node
nodebrew setup
set -x PATH $HOME/.nodebrew/current/bin $PATH
nodebrew install-binary latest
nodebrew use latest

# npm
npm install -g gtop
npm install -g zenn-cli
npm install -g @marp-team/marp-cli 
npm install -g carbon-now-cli 
npm install -g gitignore.cli 
npm install -g @google/clasp 
npm install -g gitmoji-cli
npm install -g gatsby-cli
npm install -g surge

# python
pip install --upgrade pip
brew install pipenv
brew install pyenv
