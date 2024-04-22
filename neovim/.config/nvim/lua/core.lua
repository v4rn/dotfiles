-- general remaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<leader>v", "<CMD>e $MYVIMRC<CR>")

-- telescope remaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-l>', builtin.grep_string, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- aesthetic
vim.o.laststatus=3
vim.cmd[[set background=dark]]
vim.cmd[[colorscheme kanagawa-dragon]]

-- setup commands
vim.g.coq_settings = {
	auto_start = "shut-up",
}
vim.cmd[[set autoindent]]
vim.cmd[[set tabstop=2]]
vim.cmd[[set shiftwidth=2]]
vim.cmd[[set softtabstop=2]]
vim.cmd[[set smarttab]]
vim.cmd[[set expandtab]]
vim.cmd[[set smartindent]]
vim.cmd[[set textwidth=80]]
vim.cmd[[set signcolumn=yes]]

vim.cmd[[set relativenumber]]
vim.cmd[[set number]]

vim.cmd[[set cmdheight=0]]

vim.cmd[[set clipboard+=unnamedplus]]

-- lsp stuff
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.gopls.setup {}
