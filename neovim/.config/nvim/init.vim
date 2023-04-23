" package management
call plug#begin()
" general
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'

" colors - customization in lua
Plug 'NLKNguyen/papercolor-theme'

" terminal config
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

" telescope and dependency
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" debugging tools
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'jodosha/vim-godebug'

" auto completion, lsp, tree sitter and tags
" you still need to add nvim-lspconfig and install the language servers you want
" to use
" For example:
"   python: sudo npm i -g pyright
"   golang: go install golang.org/x/tools/gopls@latest
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" core setup
lua require("core")
lua require("toggleterm").setup()

" convert these cmds to lua
hi WinSeparator ctermbg=NONE
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<cr><Esc>

nnoremap ; :
vnoremap ; :

nnoremap <silent> [q :cprevious<cr><cr>
nnoremap <silent> ]q :cnext<cr><cr>

function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

nnoremap <leader>1 :call ToggleQuickFix()<cr>
autocmd! FileType qf nnoremap <buffer> <leader><Enter> <C-w><Enter><C-w>L
