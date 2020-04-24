#!/usr/bin/env bash

BASEDIR=$(dirname $0)
cd $BASEDIR

ln -s ${PWD}/.bashrc ~/.bashrc
ln -s ${PWD}/.bash_profile ~/.bash_profile
