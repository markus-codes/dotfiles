#!/bin/sh

symlink_dotfile() {
  ln -sfv $(grealpath $1) "$HOME/.$1"
}

symlink() {
  ln -sfv $(grealpath $1) "$HOME/$1"
}

echo "Creating symlinks ..."

pushd ./dots
symlink_dotfile .gitconfig
symlink_dotfile .gitignore
symlink_dotfile .hyper.js
symlink_dotfile .zshrc
symlink_dotfile .hyper.js

# Common Prompt
ln -s ~/dotfiles/other/common.zsh-theme $HOME/.oh-my-zsh/themes

