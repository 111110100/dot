"location: ~/.vim/after/syntax/javascript.vim

set tabstop=2
set shiftwidth=2
set softtabstop=2

autocmd! bufreadpost * set noexpandtab | retab! 2
autocmd! bufwritepre * set expandtab | retab! 2
autocmd! bufwritepost * set noexpandtab | retab! 2

syn keyword jsTrue true
highlight def link jsTrue Number
syn keyword jsFalse false
highlight def link jsFalse Number

syntax match jsNumber "\d"
highlight def link jsNumber Number
