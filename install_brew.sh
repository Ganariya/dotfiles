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
    act
    asciinema
    awscli
    aws-shell
    bat
    cookiecutter
    ctop
    dat
    exa
    ffmpeg
    fd
    fish
    gh
    git
    gist
    gitui
    jrnl
    mas
    mysql
    navi
    nb
    nim
    neofetch
    neovim
    nodebrew
    nnn
    pandoc
    procs
    poppler
    poetry
    pstree
    sampler
    sd
    sqlite
    starship
    taskell
    terminal-notifier
    thefuck
    tldr
    tmux
    tmuxinator
    tree
    vercel-cli
    warp
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
    cacher
    cheatsheet
    dash
    deepl
    discord
    docker
    drawio
    dropbox
    flux
    font-hack-nerd-font
    gitkraken
    grammarly
    google-backup-and-sync
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
    postman
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
    xmind
    zoom
)

echo "brew casks"
for cask in "${casks[@]}"; do
	brew install --cask $cask
done


stores=(
    497799835
    539883307
    937984704
    975890633
    1144071713
    1295203466
    1423210932
    1429033973
    1450950860
    1483764819
)


echo "app stores"
for store in "${stores[@]}"; do
    mas install $store
done


brew cleanup

echo "brew installed"

# https://qiita.com/macololidoll/items/1c369217c6203dd479bd


