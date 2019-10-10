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
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'itchyny/lightline.vim'
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set number
set tabstop=4
set autoindent
set shortmess+=I
set autochdir
set noswapfile
set nobackup
set noundofile
set showmatch
set expandtab
set shiftwidth=4
set laststatus=2
set noshowmode
set cursorline

"colorscheme 256_noir
" Change highlighting of cursor line when entering/leaving Insert Mode
"highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=237 guifg=NONE guibg=#121212
"autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
"autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212

set t_Co=256
colorscheme PaperColor
set background=dark
