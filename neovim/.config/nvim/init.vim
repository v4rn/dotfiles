" package management
call plug#begin()
" general
Plug 'tpope/vim-vinegar'

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

" convert these cmds to lua
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<cr><Esc>

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
