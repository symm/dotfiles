syntax on
set t_Co=256
set nomodeline
set backspace=indent,eol,start
set number
set nocompatible
"python /django settings http://py.vaults.ca/~x/python_and_vim.html
set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

set ruler
set viminfo=
set encoding=utf-8
set t_Co=256
colorscheme molokai

map <F10> :let &background = ( &background == "dark"? "light" : "dark" )<CR>

"autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

set nocindent
set nosmartindent
set noai
set list
set listchars=tab:»·,trail:·,extends:»
set cindent shiftwidth=4
