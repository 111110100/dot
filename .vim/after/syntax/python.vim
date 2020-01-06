"location: ~/.vim/after/syntax/python.vim

set tabstop=4
set shiftwidth=4
set softtabstop=4

autocmd! bufreadpost * set noexpandtab | retab! 4
autocmd! bufwritepre * set expandtab | retab! 4
autocmd! bufwritepost * set noexpandtab | retab! 4

"colorscheme 256_noir
"highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=237 guifg=NONE guibg=#121212
"highlight CursorColumn cterm=NONE ctermfg=NONE ctermbg=237 guifg=NONE guibg=#121212
"autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
"autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=237 guifg=NONE guibg=#121212

syn keyword pythonTrue True
highlight def link pythonTrue Number
syn keyword pythonFalse False
highlight def link pythonFalse Number

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (((&t_ZH != '' && &t_ZH != '^[[7m') || has('gui_running')) && !has('iOS')) || has('nvim')
if s:t_Co >= 256
    hi Comment ctermfg=240 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000 cterm=italic
    "hi Function ctermfg=255 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000 cterm=italic
    hi String ctermfg=245 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000 cterm=italic
    hi SpecialComment ctermfg=245 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000 cterm=italic
    hi markdownItalic ctermfg=245 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000 cterm=italic
    hi Number ctermfg=196 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000 cterm=italic
    "hi SpecialKey cterm=NONE ctermfg=240 ctermbg=16 gui=NONE guifg=#bcbcbc guibg=#000009
endif

"set list listchars=tab:\:\ ,trail:·,extends:»,precedes:«,nbsp:×
"hi SpecialKey cterm=NONE ctermfg=238 ctermbg=16 gui=NONE guifg=#585858 guibg=#000000
