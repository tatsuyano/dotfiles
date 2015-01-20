export LC_ALL=en_US.UTF-8
export LANG=ja_JP.UTF-8
export EDITOR=emacs
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

## colordiff http://senta.me/blog/others/install-colordiff-cento
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi

## alias & function
if [[ -x `which rlwrap` ]]; then
   alias mysql="rlwrap -a -p$TMUX_MAIN_COLOR mysql --pager='less -S -n -i -F -X'"
else
   alias mysql="mysql --pager='less -S -n -i -F -X'"
fi

if [[ "$(uname)" != "Darwin" ]]; then
   alias ll='ls -l --color=auto'
   alias ls='ls -F --color=auto'
fi

function tmr(){ tmux new -s $1 || tmux attach -d -t $1; }
