" VIM Configuration File
" Description: Optimized for contest programming using C++ and python3
" Author: Zunaed Karim Sifat

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Put the plugins here
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
" Plugin 'python-mode/python-mode'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
set lines=50 columns=129
" turn syntax highlighting on
set t_Co=256
syntax on
" colorscheme wombat256
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

autocmd VimEnter * NERDTree




" Setting gruvbox colorscheme with dark background
colorscheme gruvbox
set bg=dark


" compile and run C++ 11 file with input from .in and output to .out file
autocmd filetype cpp nnoremap <F4> :!g++ --std=c++0x % -ggdb -o %:r && ./%:r < .in > .out && subl .out<CR>
" compile and run C++ 11 files with <F5>
autocmd filetype cpp nnoremap <F5> :!g++ --std=c++0x % -ggdb -o %:r && ./%:r <CR>
" run python3 files with input and output from file
autocmd filetype cpp nnoremap <F3> :!cp ~/.vim/template/cpp.cpp %<CR>
autocmd filetype python nnoremap <F4> :!python3 % < .in > .out <CR>
" run python3 files with <F5>
autocmd filetype python nnoremap <F5> :!python3 % <CR>
" save all files with <F2> 

" open input, output and source file in gedit to copy
autocmd filetype *   nnoremap <F2> :w <CR>  
autocmd filetype *   nnoremap <F6> :!subl .in <CR>
autocmd filetype *   nnoremap <F7> :!subl .out <CR>
autocmd filetype *   nnoremap <F8> :!subl % <CR>
