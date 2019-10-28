" Vundle: 
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" vim +PluginInstall +qall
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/deoplete.nvim', { 'do': 'UpdateRemotePlugins' }
Plugin 'jiangmiao/auto-pairs'
Plugin 'ervandew/supertab'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-sensible'
Plugin 'arzg/vim-substrata'
Plugin 'andreasvc/vim-256noir'
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
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

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

colorscheme substrata

let g:lightline = {'colorscheme': 'jellybeans'}
"let g:lightline = {'colorscheme': 'darcula'}
"let g:lightline = {'colorscheme': 'wombat'}
"let g:lightline = {'colorscheme': 'seoul256'}
"let g:lightline = {'colorscheme': 'Tomorrow_Night_Bright'}

set list listchars=tab:\·\ ,trail:·,extends:»,precedes:«,nbsp:×

if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
