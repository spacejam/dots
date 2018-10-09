export GOPATH=$HOME/src/go
export RUST_SRC_PATH=$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src
export JAVA_HOME=/usr/lib/jvm/default
export ZSH=$HOME/.oh-my-zsh
export RUST_BACKTRACE=1
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH="$HOME/bin:\
/usr/bin:\
/bin:\
/usr/sbin:\
/sbin:\
/usr/local/bin:\
$HOME/.local/bin:\
$HOME/.cargo/bin:\
$HOME/.rvm/bin:\
$GOPATH/bin:\
$HOME/.gem/ruby/2.2.0/bin:\
/usr/bin/vendor_perl:\
$HOME/.cabal/bin:/usr/bin/core_perl:\
$HOME/.gem/ruby/2.3.0/bin"

export LD_LIBRARY_PATH="/usr/local/lib"
export KEYTIMEOUT=1
export GPG_TTY=$(tty)

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

# repeat rate
# xset r off
# fast rate
xset -r r rate 380 80


alias vim=nvim
alias t='LOCATION_QUERY=yeh LOGFILE=/home/t/src/void/debug.log ~/src/void/target/release/void /home/t/Dropbox/t.db'
alias cb='cargo build'
alias tf='terraform'
alias ec='etcdctl'
alias gt='go test -race $(glide novendor)'
alias cfn="find . | awk '{ FS=\"/\"; print \$2 }' | sort | uniq -c | sort -n"
alias dud="du -d1 | sort -n | awk '{print \$2}' | xargs -n1 du -h -d0"
alias rmtarget='find . -type d -name "*target" -exec rm -rf {} \;'
alias tmux='tmux -u'

# The next line updates PATH for the Google Cloud SDK.
if [ -f /home/t/src/google-cloud-sdk/path.zsh.inc ]; then
  source "$HOME/src/google-cloud-sdk/path.zsh.inc"
fi

# The next line enables shell command completion for gcloud.
if [ -f /home/t/src/google-cloud-sdk/completion.zsh.inc ]; then
  source "$HOME/src/google-cloud-sdk/completion.zsh.inc"
fi

function retry {
  while true; do $*; if [ $? -ne 0 ]; then break; fi; done
}
