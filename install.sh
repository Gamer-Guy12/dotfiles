#!/bin/bash

# symlinks some thingies

cwd=$(pwd)

ln -s $cwd/.bashrc ~/
ln -s $cwd/.tmux.conf ~/

ln -s $cwd/nvim/ ~/.config
ln -s $cwd/lazygit/ ~/.config

