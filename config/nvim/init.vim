set rtp^=/usr/share/vim/vimfiles/

let mapleader = "`"
let maplocalleader = "\\"

set nocompatible

set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/nvim/dein')
	call dein#begin('~/.config/nvim/dein')
	call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')
	
	call dein#add('w0rp/ale')
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('Shougo/neco-vim')
	call dein#add('zchee/deoplete-jedi')
	call dein#add('Shougo/neco-syntax')
	call dein#add('autozimu/LanguageClient-neovim', {
				\ 'rev': 'next',
				\ 'build': 'bash install.sh',
				\ })

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
	call dein#install()
endif

set nowrap
set scrolloff=4
set clipboard+=unnamedplus
set completeopt-=preview

nnoremap <leader>1 :set relativenumber!<enter>
nnoremap <localleader>1 :set number!<enter>

let g:deoplete#enable_at_startup = 1

au FileType xml setlocal shiftwidth=2 tabstop=2

colorscheme theme
