"location: ~/.vim/after/syntax/python.vim

set tabstop=4
set shiftwidth=4
set softtabstop=4

autocmd! bufreadpost * set noexpandtab | retab! 4
autocmd! bufwritepre * set expandtab | retab! 4
autocmd! bufwritepost * set noexpandtab | retab! 4

syn keyword pythonTrue True
highlight def link pythonTrue Number
syn keyword pythonFalse False
highlight def link pythonFalse Number
