# --------------------
# PATH
# --------------------
set PATH /Library/Frameworks/Python.framework/Versions/3.6/bin $PATH
set PATH /opt/local/bin /opt/local/sbin $PATH
set PATH /usr/local/var/pyenv/shims $PATH
set PATH $PATH $HOME/.nodebrew/current/bin /usr/local/opt/php@7.2/bin/php 
set PATH $HOME/.cargo/bin $PATH
set PATH $PATH /Users/ganariya/.nimble/bin

set GOPATH $HOME/go
set PATH $PATH $GOPATH/bin

# --------------------
# VARIABLES
# --------------------
set EDITOR /usr/bin/vi
set LANG ja_JP.UTF-8
set -x PYENV_ROOT /usr/local/var/pyenv

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

