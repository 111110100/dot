" Vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" vim +PluginInstall +qall
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'
Plugin 'itchyny/lightline.vim'
Plugin 'andreasvc/vim-256noir'
call vundle#end()             "required
filetype plugin indent on     "required

syntax on
set number
set tabstop=2
set shiftwidth=2
set autoindent
set shortmess+=I
set autochdir
set noswapfile
set nobackup
set noundofile
set showmatch
set expandtab
set laststatus=2
set noshowmode
set cursorline
set incsearch
set showmatch
set ignorecase
set smartcase
set encoding=utf-8

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

colorscheme 256_noir
"256_noir stuff
highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=237 guifg=NONE guibg=#121212
highlight CursorColumn cterm=NONE ctermfg=NONE ctermbg=237 guifg=NONE guibg=#121212
autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=237 guifg=NONE guibg=#121212

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (((&t_ZH != '' && &t_ZH != '^[[7m') || has('gui_running')) && !has('iOS')) || has('nvim')
if s:t_Co >= 256
 hi Comment ctermfg=240 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000 cterm=italic
 hi Function ctermfg=255 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000 cterm=italic
 hi String ctermfg=245 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000 cterm=italic
 hi SpecialComment ctermfg=245 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000 cterm=italic
 hi markdownItalic ctermfg=245 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000 cterm=italic
 hi Number ctermfg=196 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000 cterm=italic
 hi SpecialKey cterm=NONE ctermfg=240 ctermbg=16 gui=NONE guifg=#bcbcbc guibg=#000009
endif
"/256_noir stuff

let g:lightline = {'colorscheme': 'jellybeans'}
"let g:lightline = {'colorscheme': 'darcula'}
"let g:lightline = {'colorscheme': 'wombat'}
"let g:lightline = {'colorscheme': 'seoul256'}
"let g:lightline = {'colorscheme': 'Tomorrow_Night_Bright'}
"let g:lightline = {'colorscheme': 'srcery_drk'}

set list listchars=tab:\·\ ,trail:·,extends:»,precedes:«,nbsp:×
"set list listchars=tab:\:\ ,trail:·,extends:»,precedes:«,nbsp:×
autocmd! bufreadpost * set noexpandtab | retab! 2
autocmd! bufwritepre * set expandtab | retab! 2
autocmd! bufwritepost * set noexpandtab | retab! 2

if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
