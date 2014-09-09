#!/usr/sh

[[ ! -e $HOME/.oh-my-zsh/custom/main.zsh  ]] && ln -s $HOME/src/github.com/tatsuyano/dotfiles/oh-my-zsh/main.zsh $HOME/.oh-my-zsh/custom/main.zsh
[[ ! -e $HOME/.oh-my-zsh/custom/peco.zsh  ]] && ln -s $HOME/src/github.com/tatsuyano/dotfiles/oh-my-zsh/peco.zsh $HOME/.oh-my-zsh/custom/peco.zsh
[[ ! -e $HOME/.oh-my-zsh/custom/plugins/z ]] && ln -s $HOME/src/github.com/tatsuyano/dotfiles/oh-my-zsh/plugins/z  $HOME/.oh-my-zsh/custom/plugins/z
[[ ! -e $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]] && ln -s $HOME/src/github.com/tatsuyano/dotfiles/oh-my-zsh/plugins/zsh-syntax-highlighting  $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
