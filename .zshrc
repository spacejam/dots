export GOPATH=$HOME/src/go
export RUST_SRC_PATH=$HOME/src/rust/src
export JAVA_HOME=/usr/lib/jvm/default
export ZSH=$HOME/.oh-my-zsh

export PATH="$HOME/bin:\
/usr/bin:\
/bin:\
/usr/sbin:\
/sbin:\
/usr/local/bin:\
$HOME/.rvm/bin:\
$GOPATH/bin:\
$HOME/.gem/ruby/2.2.0/bin:\
/usr/bin/vendor_perl:\
$HOME/.cabal/bin:/usr/bin/core_perl:\
$HOME/.gem/ruby/2.3.0/bin"

export LD_LIBRARY_PATH="/usr/local/lib"

ZSH_THEME="minimal-tan"

bindkey '^b' backward-word
bindkey '^f' forward-word

plugins=(git)

source $HOME/.zshrc_work
source $ZSH/oh-my-zsh.sh
source $HOME/.cargo/env
unsetopt histverify

# Causes history to be shared, but not incrementally appended (oh-my-zsh default)
setopt APPEND_HISTORY

setxkbmap -option "ctrl:nocaps"
setxkbmap -option "altwin:swap_lalt_lwin"
