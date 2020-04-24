#!/usr/bin/env bash

BASEDIR=$(dirname $0)
cd $BASEDIR

ln -s ${PWD}/.bashrc ~/.bashrc
ln -s ${PWD}/.bash_profile ~/.bash_profile
ln -s ${PWD}/.ideavimrc ~/.ideavimrc
ln -s ${PWD}/.vimrc ~/.vimrc
ln -s ${PWD}/.config ~/.config
