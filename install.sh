#!/bin/bash

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Bash
ln -sf $DOTFILES/bash/.bashrc $HOME/.bashrc
ln -sf $DOTFILES/bash/.bashrc_local $HOME/.bashrc_local
ln -sf $DOTFILES/bash/.bash_aliases $HOME/.bash_aliases

# Tmux
ln -sf $DOTFILES/tmux/.tmux.conf $HOME/.tmux.conf

# Git
ln -sf $DOTFILES/git/gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/git/gitignore_global $HOME/.gitignore_global
