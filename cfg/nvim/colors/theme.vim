set background=light
hi clear
if exists('syntax_on')
	syntax reset
endif
let g:colors_name='theme'

" Bro DUDE
hi NonText	ctermbg=NONE	ctermfg=0
hi LineNr	ctermbg=NONE	ctermfg=8
hi CursorLineNr	ctermbg=NONE	ctermfg=8
hi Visual	ctermbg=8	ctermfg=7

hi SignColumn	ctermbg=NONE
hi Pmenu	ctermbg=8	ctermfg=7
hi Normal	ctermbg=NONE	ctermfg=15
hi Error	ctermbg=1	ctermfg=0
hi Comment	ctermbg=NONE	ctermfg=8
hi Todo		ctermbg=NONE	ctermfg=9
