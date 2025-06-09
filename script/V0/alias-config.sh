#!/bin/bash
set -euo pipefail

echo "Configuring .bashrc..."

cat > ~/.bashrc <<'EOF'
[[ $- != *i* ]] && return

HISTCONTROL=ignoredups:erasedups
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend

export LS_OPTIONS='--color=auto'
eval "$(dircolors -b)"
alias ls='ls $LS_OPTIONS'
alias grep='grep --color=auto'

PS1='\u@\h:\w\$ '

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Alias Raiju
# -----------------------------------
# Custom aliases (Raiju)
alias light='sudo'
alias eclipse='sudo pacman -S'
alias goto='cd'
alias sun='sudo nano'
alias e='exit'
alias r='reboot'
alias q='poweroff'
alias k='sudo pacman -Syu'
alias moon='grc ping -c 4 1.1.1.1'
# -----------------------------------

neofetch --config ~/.config/neofetch/config.conf

EOF

source ~/.bashrc

echo ".bashrc configured."

