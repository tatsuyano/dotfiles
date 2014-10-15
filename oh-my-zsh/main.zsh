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

## Emacs-cask
if [ -d $HOME/.cask ]; then
   export PATH=$HOME/.cask/bin:$PATH
fi

## heroku
if [ -d /usr/local/heroku ]; then
   export PATH=/usr/local/heroku/bin:$PATH
fi

## MacOSX only
if [[ "$(uname)" == "Darwin" ]]; then
   export HOMEBREW_CASK_OPTS="--appdir=/Applications" # Homebrew-cask
fi
