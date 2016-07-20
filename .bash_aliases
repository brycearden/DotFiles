#!/bin/bash
# reload zsh config
alias reload!='source ~/.bashrc'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias l="ls -lah ${colorflag}"
alias la="ls -AF ${colorflag}"
alias ll="ls -lFh ${colorflag}"
alias lld="ls -l | grep ^d"
alias rmf="rm -rf"
alias ls="ls --color=auto"

# General Commands {{{

# Helpers
alias grep='grep --color=auto'
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder

# Prompt if overrite
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -I"

#NOTE this overrides an existing linux command called open
alias open="file_open"

# Example usage: grep "Some string" * && alert "Message"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias pylint="pylint --rcfile ~/.pylintrc"

# Add colors for filetype and human-readable sizes
alias ls="ls --color=auto -h"
alias la="ls -A"
alias lx="ls -lXB" # Sort by extension
alias lk="ls -lSr" # Sort by size, biggest last
alias lt="ls -ltr" # Sort by date, most recent last
alias lc="ls -ltcr" # Sort by/show change time, most recent last
alias lu="ls -ltur" # Sort by/show access time, most recent last

alias ll="ls -alF"

# File size
alias fs="stat -f \"%z bytes\""

# }}}

# Shortcuts {{{
alias vbrc="vim ~/.bashrc && source ~/.bashrc"
alias back="cd - > /dev/null"
alias h="history | grep"
alias reload="source ~/.bashrc"
alias realias="$EDITOR ~/.bash_aliases; source ~/.bash_aliases"
alias kaenv="source ~/.virtualenv/khan27/bin/activate"
# }}}

# Package Management {{{
alias install="sudo apt-get install"
alias remove="sudo apt-get remove"
# }}}

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias mnemosyne='mnemosyne -d ~/Mnemosyne-2.3.5/mnemosyne'

# vim:foldmethod=marker:foldlevel=0
