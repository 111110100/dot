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
Plugin 'hdima/python-syntax'
Plugin 'zxqfl/tabnine-vim'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'tmsvg/pear-tree'
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
"set mouse=a
set relativenumber

let python_highlight_all = 1

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

"colorscheme jellybeans
"set guifont=Monaco:h10 noanti
"let g:lightline = {'colorscheme': 'jellybeans'}

"if (has("termguicolors"))
" set termguicolors
"endif
"colorscheme tender
"let g:lightline = { 'colorscheme': 'tender' }

"colorscheme nord
"let g:lightline = { 'colorscheme': 'nord' }

"colorscheme happy_hacking

"colorscheme gotham
"let g:lightline = { 'colorscheme': 'nord' }

"colorscheme iceberg
"let g:lightline = { 'colorscheme': 'iceberg' }

"set background=dark
"colorscheme PaperColor
"let g:PaperColor_Theme_Options = {
"  \   'language': {
"  \        'python': {
"  \          'highlight_builtins' : 1
"  \        },
"  \        'cpp': {
"  \          'highlight_standard_library': 1
"  \        },
"  \        'c': {
"  \          'highlight_builtins' : 1
"  \        }
"  \   }
"  \ }
"let g:lightline = { 'colorscheme': 'PaperColor' }

"let g:lightline = {'colorscheme': 'jellybeans'}
"let g:lightline = {'colorscheme': 'darcula'}
"let g:lightline = {'colorscheme': 'wombat'}
"let g:lightline = {'colorscheme': 'seoul256'}
"let g:lightline = {'colorscheme': 'Tomorrow_Night_Bright'}
"let g:lightline = {'colorscheme': 'srcery_drk'}

autocmd! bufreadpost * set noexpandtab | retab! 4
autocmd! bufwritepre * set expandtab | retab! 4
autocmd! bufwritepost * set noexpandtab | retab! 4

if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
