"dein Scripts-----------------------------

if &compatible
	set nocompatible	" Be iMproved
endif

" Required:
set runtimepath+=/home/yemou/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/yemou/.local/share/dein')
	call dein#begin('/home/yemou/.local/share/dein')

	" Let dein manage dein
	" Required:
	call dein#add('/home/yemou/.local/share/dein/repos/github.com/Shougo/dein.vim')

	" Add or remove your plugins here:
	call dein#add('w0rp/ale')
	call dein#add('davidhalter/jedi-vim')
	call dein#add('dylanaraps/wal.vim')

	" Required:
	call dein#end()
	call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"End dein Scripts-------------------------

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

autocmd Filetype lua :setlocal et sw=2 ts=2 sts=2
autocmd Filetype xml :setlocal et sw=2 ts=2 sts=2
autocmd Filetype html :setlocal et sw=2 ts=2 sts=2

colorscheme wal
