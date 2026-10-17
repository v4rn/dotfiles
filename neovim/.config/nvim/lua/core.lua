-- general remaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<leader>v", "<CMD>e $MYVIMRC<CR>")
vim.o.termguicolors = true

-- telescope remaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-l>', builtin.grep_string, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- setup commands
vim.cmd[[set autoindent]]
vim.cmd[[set tabstop=2]]
vim.cmd[[set shiftwidth=2]]
vim.cmd[[set softtabstop=2]]
vim.cmd[[set smarttab]]
vim.cmd[[set expandtab]]
vim.cmd[[set smartindent]]
vim.cmd[[set textwidth=80]]
vim.cmd[[set signcolumn=no]]

-- vim.cmd[[set relativenumber]]
-- vim.cmd[[set number]]

vim.cmd[[set cmdheight=0]]

vim.cmd[[set clipboard+=unnamedplus]]

-- lsp stuff
vim.lsp.enable({ 'gopls', 'pyright' })

-- tree sitter
local langs = { 'lua', 'python', 'go', 'rust', 'bash' }
require('nvim-treesitter').setup {}
require('nvim-treesitter').install(langs)

vim.api.nvim_create_autocmd('FileType', {
    pattern = langs,
    callback = function()
        vim.treesitter.start()
    end,
})

-- aesthetic
vim.o.laststatus=3
vim.cmd[[set background=dark]]
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "PaperColor",
  callback = function()
    for _, g in ipairs({
      "Normal", "NormalNC", "NormalFloat", "EndOfBuffer", "LineNr", "FoldColumn",
    }) do
      vim.api.nvim_set_hl(0, g, { bg = "NONE", ctermbg = "NONE" })
    end
  end,
})
vim.cmd[[colorscheme PaperColor]]
