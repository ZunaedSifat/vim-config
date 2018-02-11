#!/bin/bash

# first install the latest version of vim
sudo apt update
sudo apt install vim build-essential cmake python-dev python3-dev
cp -r .vim ~/

# now setup Vundle, the package manager
# the following command will get the latest version of vundle from
# github, and install it in the system
# for more info, visit https://github.com/VundleVim/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


echo
echo
echo
echo
echo "enter anything to open vim and run :PluginInstall in the command mode"
read 

vim

# compile YCM for semantic support for C-like languages
~/.vim/bundle/YouCompleteMe/install.py --clang-completer

# place the .ycm_extra_conf.py at the root to get support from everywhere in the pc
sudo cp .ycm_extra_conf.py /
