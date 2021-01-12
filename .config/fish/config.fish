# --------------------
# PATH
# --------------------
set PATH $PATH /opt/local/bin
set PATH $PATH /opt/local/sbin
set PATH $PATH /usr/local/bin
set PATH $PATH /usr/local/sbin
set PATH $PATH $HOME/.nodebrew/current/bin
set PATH $PATH $HOME/.cargo/bin 
set PATH $PATH $HOME/.pyenv
set PATH $PATH /Users/ganariya/.nimble/bin
set PATH $PATH $HOME/dotfiles
set GOPATH $HOME/go
set PATH $PATH $GOPATH/bin

# --------------------
# VARIABLES
# --------------------
set EDITOR /usr/bin/vi
set LANG ja_JP.UTF-8

# --------------------
# starship
# --------------------
starship init fish | source

# --------------------
# alias
# --------------------
alias vim='nvim'
alias vi='nvim'
alias ls='exa'
alias cat='bat'
alias pip='pip3'
alias python='python3'
alias pdf2eps='pdftops -eps'
alias flake8='flake8 --statistics --show-source --max-line-length 88 --docstring-convention numpy'

# --------------------
# vim_bindings
# --------------------
fish_vi_key_bindings

# --------------------
# fuck
# --------------------
thefuck --alias | source 

# --------------------
# tmuxinator
# --------------------
# tmuxinator daily
