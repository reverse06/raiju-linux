#!/bin/bash
set -euo pipefail

tee ~/.bashrc <<'EOF'
# Custom alias
alias light='sudo'
alias eclipse='sudo pacman -S'
alias goto='cd'
alias sun='sudo nano'
alias e='exit'
alias r='reboot'
alias q='poweroff'
alias k='sudo pacman -Syu'
alias moon='grc ping -c 4 1.1.1.1'
EOF

source ~/.bashrc

