#!/usr/bin/env zsh

echo alias dotfiles=\"'/usr/bin/git --git-dir=$HOME/.dotfiles.git    --work-tree=$HOME'\" >> $HOME/.zshrc

source $HOME/.zshrc

git --git-dir=$HOME/.dotfiles.git    --work-tree=$HOME config --local status.showUntrackedFiles no
