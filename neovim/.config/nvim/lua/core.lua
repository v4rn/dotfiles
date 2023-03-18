-- general remaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- telescope remaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-l>', builtin.grep_string, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- aesthetic
vim.o.laststatus=3

require("tokyonight").setup({
  style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
	sidebars = "transparent",
	floats = "transparent",
  }
})
vim.cmd[[colorscheme tokyonight]]

-- setup commands
vim.g.coq_settings = {
	auto_start = "shut-up",
}
vim.cmd[[set tabstop=8]]
vim.cmd[[set expandtab]]
vim.cmd[[set shiftwidth=4]]
vim.cmd[[set autoindent]]
vim.cmd[[set smartindent]]
vim.cmd[[set textwidth=80]]
vim.cmd[[set signcolumn=yes]]
