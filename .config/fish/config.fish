# --------------------
# PATH
# --------------------
set PATH $PATH /Library/Frameworks/Python.framework/Versions/3.9/bin
set PATH $PATH /opt/local/bin
set PATH $PATH /opt/local/sbin
set PATH $PATH /usr/local/bin
set PATH $PATH $HOME/.nodebrew/current/bin
set PATH $PATH $HOME/.cargo/bin 
set PATH $PATH /Users/ganariya/.nimble/bin
set PATH $PATH $HOME/dotfiles

set GOPATH $HOME/go
set PATH $PATH $GOPATH/bin
# set PATH /usr/local/var/pyenv/shims $PATH

# --------------------
# VARIABLES
# --------------------
set EDITOR /usr/bin/vi
set LANG ja_JP.UTF-8
# set -x PYENV_ROOT /usr/local/var/pyenv

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


# --------------------
# vim_bindings
# --------------------
fish_vi_key_bindings

