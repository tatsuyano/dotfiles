alias ll='ls -l --color=auto'
alias ls='ls -F --color=auto'

## anyenv
export PATH=$HOME/.anyenv/bin:$PATH
eval "$(anyenv init - zsh)"

## golang
export GOPATH=$HOME
export PATH=$GOROOT/bin:$PATH

## cask
export PATH=$HOME/.cask/bin:$PATH

## z
_Z_CMD=j
precmd() { _z --add "$(pwd -P)" }
