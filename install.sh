#!/bin/bash

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Bash
ln -sf $DOTFILES/bash/.bashrc $HOME/.bashrc

# Vim
ln -sf $DOTFILES/vim/vimrc $HOME/.vim/vimrc
ln -sf $DOTFILES/vim/spell $HOME/.vim/spell

# Neovim
# rm -rf $HOME/.config/nvim
# ln -s $DOTFILES/nvim $HOME/.config/nvim

# Tmux
ln -sf $DOTFILES/tmux/.tmux.conf $HOME/.tmux.conf
