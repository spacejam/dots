syntax enable
colorscheme icefall
filetype plugin indent on

nnoremap <C-n> :tabnext<CR>
nnoremap <C-m> :tabprevious<CR>
nnoremap <C-o> :%s/\s\+$<CR>
nnoremap B ^
nnoremap E $
nnoremap ts :tab sball<CR>
nnoremap tl :TlistToggle<CR>
nnoremap tt :! ctags -R .<CR> :set tags=./tags<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*.jar,*/target/*
set t_Co=256
set shell=/bin/bash
set tags=tags;/
set fillchars="vert:\ "
set nocompatible
set tags=./tags
set number
set ruler
set ls=2            " always display filename on the ruler
set nowrap          " let the world see long lines for what they are
set backspace=2     " normal backspace behavior
set encoding=utf-8
set autoindent
set expandtab       " insert spaces instead of tab
set smarttab        " use shiftwidth setting for inserting tabs

function! SetSpaces(nspaces)
  " need to use `let &' instead of `set' so that variables can be used
  let &shiftwidth=a:nspaces
  let &softtabstop=a:nspaces
  let &tabstop=a:nspaces
endfunction

call SetSpaces(2)
autocmd BufEnter *.py call SetSpaces(4)
autocmd BufLeave *.py call SetSpaces(2)
execute pathogen#infect()
