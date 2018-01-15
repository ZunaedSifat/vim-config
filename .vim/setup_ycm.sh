#!/bin/bash

# first install development tools and cmake
sudo apt install build-essential cmake

# make sure the python headers are installed
sudo apt-get install python-dev python3-dev

# compile YCM for semantic support for C-like languages
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

# place the .ycm_extra_conf.py at the root to get support from everywhere in the pc
cp .ycm_extra_conf.py /
