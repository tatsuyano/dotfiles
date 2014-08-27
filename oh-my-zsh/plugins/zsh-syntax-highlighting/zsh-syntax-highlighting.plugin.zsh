HIGH_LIGHT_DIR=$HOME/src/github.com/zsh-users/zsh-syntax-highlighting

if test ! -e $HIGH_LIGHT_DIR; then
    $HOME/bin/ghq get https://github.com/zsh-users/zsh-syntax-highlighting.git
fi

[[ -f $HIGH_LIGHT_DIR/zsh-syntax-highlighting.zsh ]] && source $HIGH_LIGHT_DIR/zsh-syntax-highlighting.zsh
