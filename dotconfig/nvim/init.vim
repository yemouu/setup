let mapleader = "`"
let maplocalleader = "\\"

nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap H ^
nnoremap L g_

vnoremap <leader>' <esc>`>a'<esc>`<i'

set runtimepath+=~/.dotfiles/dotconfig/nvim/plugins/wal.vim
