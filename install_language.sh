#!/bin/bash

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# go
brew install go

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

# python

