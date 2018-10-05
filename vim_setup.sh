#!/usr/bin/env bash
set -euf -o pipefail

clean_up() {
  cd -
}

mkdir -p ~/.vim/bundle
cd ~/.vim/bundle

trap clean_up EXIT

git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
git clone --depth=1 https://github.com/the-lambda-church/coquille.git
git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git
git clone --depth=1 git@github.com:luochen1990/rainbow.git
git clone --depth=1 https://github.com/rust-lang/rust.vim.git
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
git clone --depth=1 git@github.com:easymotion/vim-easymotion.git
git clone --depth=1 git://github.com/airblade/vim-gitgutter.git
git clone --depth=1 git@github.com:tpope/vim-surround.git
git clone --depth=1 https://github.com/tpope/vim-fugitive.git
git clone --depth=1 https://github.com/fatih/vim-go.git
git clone --depth=1 https://github.com/racer-rust/vim-racer.git
