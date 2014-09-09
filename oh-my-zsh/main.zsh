alias ll='ls -l --color=auto'
alias ls='ls -F --color=auto'

export PATH=/usr/sbin:/sbin:$PATH

## golang
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

## anyenv
if [ -d $HOME/.anyenv ]; then
  export PATH=$HOME/.anyenv/bin:$PATH
  eval "$(anyenv init - zsh)"
fi

## cask
if [ -d $HOME/.cask ]; then
  export PATH=$HOME/.cask/bin:$PATH
fi
