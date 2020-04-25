#!/bin/bash

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."
brew upgrade --all

formulas=(
	pandoc
	pstree
	ffmpeg
	fish
	poppler
	git
	sqlite
	starship
	tldr
	neovim
	tree
	tmux
	yarn
	thefuck
	nnn
)

echo "brew tap"
# brew tap thirdparty
brew tap homebrew/cask-fonts

echo "brew install formula"
for formula in "${formulas[@]}"; do
	brew install $formula || brew upgrade $formula
done

# install gui up
casks=(
	clion
	visual-studio-code
	font-hack-nerd-font
	discord
	cheatsheet
	steam
	gitkraken
	gyazo
	jetbrains-toolbox
	inkscape
	keycastr
	kap
	karabiner-elements
	boostnote
	bitwarden
	appclearner
	docker
	dropbox
	filezilla
	deepl
	google-chrome
	hyperswitch
	obs
	spotify
	slack
	tickeys
	trello
	webstorm
	pycharm
	rectangle
	skitch
	alfread
	drawio
	iterm
)

echo "brew casks"
for cask in "${casks[@]}"; do
	brew cask install $cask
done

brew cleanup
brew cask cleanup

echo "brew installed"




