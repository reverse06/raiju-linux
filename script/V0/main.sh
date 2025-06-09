#!/bin/bash

set -euo pipefail

#Packages installation
 ./packages-install.sh

 #Neovim configuration
 ./nvim-config.sh

 #Alias configuration
 ./alias-config.sh
