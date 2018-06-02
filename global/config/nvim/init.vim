let mapleader = "`"
let maplocalleader = "\\"

nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap H ^
nnoremap L g_
nnoremap <leader>1 :set nu!<cr>
nnoremap <leader>2 :set rnu!<cr>

vnoremap <leader>' <esc>`>a'<esc>`<i'

set tabstop=4
set shiftwidth=4
