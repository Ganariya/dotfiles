set PATH /Library/Frameworks/Python.framework/Versions/3.6/bin $PATH
set PATH /opt/local/bin /opt/local/sbin $PATH
set PATH /usr/local/var/pyenv/shims $PATH
set PATH $PATH $HOME/.nodebrew/current/bin /usr/local/opt/php@7.2/bin/php 
set PATH $HOME/.cargo/bin $PATH
set PATH $PATH /Users/ganariya/.nimble/bin
set -x PYENV_ROOT /usr/local/var/pyenv
thefuck --alias | source
starship init fish | source
export LANG=ja_JP.UTF-8

set -x music_files (ls ~/.config/fish/music)
set -x num_of_music (count $music_files)

function ganariya_preexec --on-event fish_preexec
    set length (string trim (echo $argv[1] | wc -m))
    if test $length -eq 1
        return
    end
    set play_music_id (math (random) % $num_of_music + 1)
    afplay ~/.config/fish/music/$music_files[$play_music_id] -v 0.05 -q 1 &
end
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

fish_vi_key_bindings

