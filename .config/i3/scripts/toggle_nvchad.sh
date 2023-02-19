#!/bin/bash

if test -d ~/.config/nvim.nvchad; then
    mv ~/.config/nvim ~/.config/nvim.mine
    mv ~/.config/nvim.nvchad ~/.config/nvim
    mv ~/.local/share/nvim ~/.local/share/nvim.mine
    mv ~/.local/share/nvim.nvchad ~/.local/share/nvim
    notify-send -t 5000 "nvim config was set to nvchad"
elif test -d ~/.config/nvim.mine; then
    mv ~/.config/nvim ~/.config/nvim.nvchad
    mv ~/.config/nvim.mine ~/.config/nvim
    mv ~/.local/share/nvim ~/.local/share/nvim.nvchad
    mv ~/.local/share/nvim.mine ~/.local/share/nvim
    notify-send -t 5000 "nvim config was set to mine"
fi
