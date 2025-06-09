#!/bin/bash

echo "Neovim configuration..."

set -e

mkdir -p ~/.config/nvim

git clone https://github.com/folke/lazy.nvim.git \
  ~/.local/share/nvim/site/pack/lazy/start/lazy.nvim

echo "Configuration in init.lua..."
cat > ~/.config/nvim/init.lua <<'EOF'
vim.opt.termguicolors = true
vim.opt.shortmess:append("I")
vim.opt.number = true


require("lazy").setup({
  { "folke/tokyonight.nvim", priority = 1000 },
})

vim.cmd.colorscheme("tokyonight-night")
EOF

echo "Neovim configuration done."

