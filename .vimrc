syntax enable
colorscheme icefall
filetype plugin indent on

nnoremap <C-n> :tabnext<CR>
nnoremap <C-m> :tabprevious<CR>
nnoremap ts :tab sball<CR>
nnoremap tt :! ctags -R .<CR> :set tags=./tags,tags;<CR>
nmap f <Plug>(easymotion-s2)

" center after jump
nnoremap n nzz
nnoremap N Nzz
nnoremap gg ggzz
nnoremap G Gzz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz
nnoremap <C-j> :lnext<CR>zz

command! W write
command! Q quit
command! Qall quitall

set hidden          " don't save file every time we goto rust def
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*.jar,*/target/*
set t_Co=256
set shell=/bin/bash
set tags=.haskelltags;tags;/,codex.tags;/
set fillchars="vert:\ "
set number
set nocompatible
set ruler
set ls=2            " always display filename on the ruler
set nowrap          " let the world see long lines for what they are
set backspace=2     " normal backspace behavior
set encoding=utf-8
set autoindent
set expandtab       " insert spaces instead of tab
set smarttab        " use shiftwidth setting for inserting tabs
set scrolloff=10
set rtp=~/.vim      " workaround for osx messing up load ordering for me
set mouse=a         " use mouse to scroll in the buffer

" incremental search and replace
if has("nvim")
  set inccommand=nosplit
endif

" folding settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=0

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:rustfmt_autosave = 1
let g:rust_cargo_check_tests = 1
let g:rainbow_active = 1
let g:racer_experimental_completer = 1

let $NVIM_TUI_ENABLE_TRUE_COLOR=0

au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <C-t> <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>s <Plug>(go-implements)

au FileType rust nmap <buffer> <C-t> :e#<CR>
au FileType rust nmap <C-]> <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

" print insertion
au FileType rust nmap ! :s/^/\=printf("println!(\"%s:%d\");\n", expand('%'), line('.'))<CR>
au FileType go nmap ! :s/^/\=printf("fmt.Println(\"%d\")\n", line('.'))<CR>
au FileType haskell nmap ! :s/^/\=printf("traceM $ \"%s:%d\" \n", expand('%'), line('.'))<CR>

function! SetSpaces(nspaces)
  " need to use `let &' instead of `set' so that variables can be used
  let &shiftwidth=a:nspaces
  let &softtabstop=a:nspaces
  let &tabstop=a:nspaces
endfunction

call SetSpaces(2)

" Remove trailing whitespace on save
autocmd BufWritePre * call s:StripTrailing()
function! s:StripTrailing()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfunction

if executable('haskell-tags')
  au BufWritePost *.hs  silent !haskell-tags % '.haskelltags'
  au BufWritePost *.hsc silent !haskell-tags % '.haskelltags'
endif

autocmd BufEnter *.py call SetSpaces(4)
autocmd BufLeave *.py call SetSpaces(2)
autocmd BufEnter *.hs call SetSpaces(4)
autocmd BufLeave *.hs call SetSpaces(2)

source ~/.vim/autoload/pathogen.vim
execute pathogen#infect()
