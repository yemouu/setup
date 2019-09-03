set rtp^=/usr/share/vim/vimfiles/

let mapleader = "`"
let maplocalleader = "\\"

set nocompatible

set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/nvim/dein')
	call dein#begin('~/.config/nvim/dein')
	call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')
	
	call dein#add('neoclide/coc.nvim', {'merge':0, 'rev': 'release'})

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

let g:deoplete#enable_at_startup = 1

set background=light
colorscheme theme
