#!/bin/bash

echo "Starting the installation of the reqired packages..."

set -euo pipefail

PACMAN_PACKAGES=(
  yay
  bat
  exa
  git
  docker
  docker-compose
  htop
  neovim
  tmux
  tree
  curl
  jq
  nmap
  tldr
  bmon
  gnome-disk-utility
  thunar
  openssh
  rsync
  fail2ban
)

AUR_PACKAGES=(
  lazygit
  glow
  fd
  ripgrep
  btop
  cheat
  navi
  visual-studio-code-bin
)

sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm --needed "${PACMAN_PACKAGES[@]}"

yay -S --noconfirm --needed "${AUR_PACKAGES[@]}"

echo "Installation of required packages done..."
