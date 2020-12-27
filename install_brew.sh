#!/bin/bash

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."
brew upgrade


formulas=(
    bat
    exa
    ffmpeg
    fish
    gh
    git
    gitui
    neovim
    nodebrew
    nnn
    pandoc
    poppler
    pstree
    sqlite
    starship
    thefuck
    tldr
    tmux
    tmuxinator
    tree
    yarn
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
    atom
    alfred
    alacritty
    appcleaner
    biscuit
    bitwarden
    boostnote
    cheatsheet
    clion
    deepl
    discord
    docker
    drawio
    dropbox
    font-hack-nerd-font
    gitkraken
    grammarly
    gyazo
    hyperswitch
    inkscape
    iterm2
    julia
    jetbrains-toolbox
    kap
    karabiner-elements
    keycastr
    mamp
    notion
    obs
    papers
    pycharm
    r
    rectangle
    skitch
    skype
    slack
    spotify
    steam
    tickeys
    visual-studio
    visual-studio-code
    vrew
    vlc
    webstorm
    xmind
    zoom
)

echo "brew casks"
for cask in "${casks[@]}"; do
	brew install --cask $cask
done

brew cleanup
brew cask cleanup

echo "brew installed"

# https://qiita.com/macololidoll/items/1c369217c6203dd479bd


