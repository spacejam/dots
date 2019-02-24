#!/usr/bin/env bash
set -euf -o pipefail

clean_up() {
  cd -
}

mkdir -p ~/.vim/autoload ~/.vim/bundle
cd ~/.vim/bundle

trap clean_up EXIT

# nice plugin loading
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# syntax hilighting and jump to error/warning
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

# coq extensions
git clone --depth=1 https://github.com/the-lambda-church/coquille.git

# fuzzy file search
git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git

# rainbow parenthesis
git clone --depth=1 https://github.com/luochen1990/rainbow.git

# rust support
git clone --depth=1 https://github.com/rust-lang/rust.vim.git
git clone --depth=1 https://github.com/racer-rust/vim-racer.git

# rapid file navigation
git clone --depth=1 https://github.com/easymotion/vim-easymotion.git

# show + next to lines that have been modified since last git commit
git clone --depth=1 https://github.com/airblade/vim-gitgutter.git
git clone --depth=1 https://github.com/tpope/vim-fugitive.git

# rapidly surround text with metachars
git clone --depth=1 https://github.com/tpope/vim-surround.git

# go support
git clone --depth=1 https://github.com/fatih/vim-go.git

# TODO add nvim <-> vim config symlinking
