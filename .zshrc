export CDPATH=.:~/src/sled/crates
export GOPATH=$HOME/src/go
export JAVA_HOME=/usr/lib/jvm/default
export ZSH=$HOME/.oh-my-zsh
export RUST_BACKTRACE=1
export RUSTFLAGS="-C target-cpu=native"
export RUST_SRC_PATH=`rustc +nightly --print sysroot`/lib/rustlib/src/rust/library
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export SKIM_DEFAULT_COMMAND="rg --files"

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
$HOME/.gem/ruby/2.3.0/bin":\
/usr/local/sbin:\
/usr/lib/llvm/8/bin

export LD_LIBRARY_PATH="/usr/local/lib"
export KEYTIMEOUT=1
export GPG_TTY=$(tty)

ZSH_THEME="minimal-tan"

bindkey '^b' backward-word
bindkey '^f' forward-word

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOME/.cargo/env
unsetopt histverify

# Causes history to be shared, but not incrementally appended (oh-my-zsh default)
setopt APPEND_HISTORY

alias gpom='git pull origin main'
alias xo='xclip -o'
alias vim=nvim
alias t='LOGFILE=~/src/void/debug.log ~/src/void/target/release/void'
alias cb='cargo build'
alias cw="cargo watch -s 'clear; cargo check --tests --color=always 2>&1 | head -40'"
alias tf='terraform'
alias ec='etcdctl'
alias gt='go test -race $(glide novendor)'
alias cfn="find . | awk '{ FS=\"/\"; print \$2 }' | sort | uniq -c | sort -n"
alias dud="du -d1 | sort -n | awk '{print \$2}' | xargs -n1 du -h -d0"
alias rmtarget='find . -type d -name "*target" -exec rm -rf {} \;'
alias tmux='tmux -u'
alias v='vim `sk`'
alias cachegrind='valgrind --tool=cachegrind'
alias callgrind='valgrind --tool=callgrind --dump-instr=yes --collect-jumps=yes --simulate-cache=yes'
alias sb='pushd benchmarks/stress2; cargo run --release -- $@; popd'
alias sbc='rm -rf benchmarks/stress2/default.sled'

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

function stacktrace {
  sudo gdb --batch -ex "t a a bt" -p `pgrep $1`
}

# opam configuration
test -r /home/t/.opam/opam-init/init.zsh && . /home/t/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
