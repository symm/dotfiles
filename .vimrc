syntax on
filetype plugin indent on

let mapleader = ','

set wildignore +=app/cache/*,var/cache/*

set nofoldenable
set nocompatible
set nobackup
set nowb
set noswapfile

set background=dark
"colorscheme solarized

set visualbell t_vb=
set relativenumber
set number

set expandtab
set ts=4
set sw=4

set laststatus=2
set ruler
set list listchars=tab:»·,trail:·

nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
set numberwidth=5

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Remember last position in file
if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif
