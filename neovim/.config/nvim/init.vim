" package management
call plug#begin()
" colors - customization in lua
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" telescope and dependency
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" auto completion, lsp, tree sitter and tags
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
call plug#end()

" core setup
lua require("core")
