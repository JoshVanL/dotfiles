#!/bin/bash

ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.tmux ~/.tmux
ln -sf ~/dotfiles/.tmux-themepack ~/.tmux-themepack
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.xinitrc ~/.xinitrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.config ~/.config
rm oh-my-zsh
rm scrips
ln -sf ~/dotfiles/oh-my-zsh  ~/oh-my-zsh
ln -sf ~/dotfiles/scripts ~/scripts
ln -sf ~/dotfiles/me.zsh-theme ~/oh-my-zsh/themes/me.zsh-theme
