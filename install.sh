#!/bin/bash

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Bash
ln -sf $DOTFILES/bash/.bashrc $HOME/.bashrc

# Vim
ln -sf $DOTFILES/vim/vimrc $HOME/.vim/vimrc
ln -sf $DOTFILES/vim/spell $HOME/.vim/spell

# Tmux
ln -sf $DOTFILES/tmux/.tmux.conf $HOME/.tmux.conf

# Git
ln -sf $DOTFILES/git/gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/git/gitignore_global $HOME/.gitignore_global
