let mapleader = "`"
let maplocalleader = "\\"

nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap H ^
nnoremap L g_
nnoremap <leader>1 :set nu!<cr>
nnoremap <leader>2 :set rnu!<cr>
nnoremap <leader>zz :let &scrolloff=999-&scrolloff<CR>

vnoremap <leader>' <esc>`>a'<esc>`<i'

set tabstop=8
set shiftwidth=8

highlight ColorColumn ctermbg=8
set colorcolumn=81

set syntax=on
set scrolloff=4
set clipboard=unnamedplus

set runtimepath^=${HOME}/doc/git/neovim-plugins/ale
set runtimepath^=${HOME}/doc/git/neovim-plugins/jedi-vim
set runtimepath^=${HOME}/doc/git/neovim-plugins/wal.vim
"colorscheme wal
