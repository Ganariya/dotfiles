# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
#export PATH

##
# Your previous /Users/iwasakiyu/.bash_profile file was backed up as /Users/iwasakiyu/.bash_profile.macports-saved_2017-12-21_at_22:48:14
##

# MacPorts Installer addition on 2017-12-21_at_22:48:14: adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#export PATH=$PATH:$HOME/.nodebrew/current/bin

#export PATH=$PATH:/usr/local/opt/php@7.2/bin/php

# pyenvさんに~/.pyenvではなく、/usr/loca/var/pyenvを使うようにお願いする
#export YENV_ROOT=/usr/local/var/pyenv

# pyenvさんに自動補完機能を提供してもらう
#if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export PATH="$HOME/.cargo/bin:$PATH"

source /Users/ganariya/Library/Preferences/org.dystroy.broot/launcher/bash/br
