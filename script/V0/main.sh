#!/bin/bash

set -euo pipefail

#Packages installation
 sudo ./packages-install.sh

 #Neovim configuration
 sudo ./nvim-config.sh
