"call pthogen
call pathogen#infect('bundle')

"auto call the file to initialize file
autocmd BufNewFile * silent! 0r ~/.vim/template/template.%:e

:set autoindent
:set bg=dark
:syntax on
:set nu
:set softtabstop=4
:set shiftwidth=4
:set softtabstop=4
:set tabstop=4
:set hls
:set ic
:set ru
:set cursorline
