#!/usr/sh

[[ ! -e $HOME/.oh-my-zsh/custom/main.zsh ]] && ln -s $HOME/src/github.com/tatsuyano/dotfiles/oh-my-zsh/main.zsh $HOME/.oh-my-zsh/custom/main.zsh
[[ ! -e $HOME/.oh-my-zsh/custom/peco.zsh ]] && ln -s $HOME/src/github.com/tatsuyano/dotfiles/oh-my-zsh/peco.zsh $HOME/.oh-my-zsh/custom/peco.zsh
[[ ! -e $HOME/.oh-my-zsh/custom/plugins  ]] && ln -s $HOME/src/github.com/tatsuyano/dotfiles/oh-my-zsh/plugins  $HOME/.oh-my-zsh/custom/plugins
