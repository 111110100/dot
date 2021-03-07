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
Plugin 'itchyny/lightline.vim'
Plugin 'arcticicestudio/nord-vim'
call vundle#end()             "required
filetype plugin indent on     "required

syntax on
set number
set tabstop=4
set shiftwidth=4
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
"set cursorcolumn
set cursorline
set incsearch
set showmatch
set ignorecase
set smartcase
set encoding=utf-8
set relativenumber

let python_highlight_all = 1

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

colorscheme nord
let g:lightline = { 'colorscheme': 'nord' }
let g:lightline = {
    \ 'colorscheme': 'nord',
    \ 'separator': {'left': "\ue0b0", 'right': "\ue0b2"},
    \ 'subseparator': { 'left': '\ue0b1', 'right': '\ue0b3'}
    \ }

autocmd! bufreadpost * set noexpandtab | retab! 2
autocmd! bufwritepre * set expandtab | retab! 2
autocmd! bufwritepost * set noexpandtab | retab! 2

if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
