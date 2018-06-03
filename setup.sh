#!/bin/sh
mkdir .vim
git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim
vim -c ":PluginInstall"
