
" Vim Options
set number
syntax on

" Setup Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin() "required

" Load Plugins
Plugin 'gmarik/Vundle.vim'	" load this first
Plugin 'bling/vim-airline'	" show open buffers
Plugin 'flazz/vim-colorschemes'	" color schemes
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'

call vundle#end() 		" required
filetype plugin indent on 	" required
" install with `vim +PluginInstall +qall` or :PluginInstall

" Global Options
let g:go_disable_autoinstall = 0
let g:neocomplete#enable_at_startup = 1

" Vim-Airline settings
let g:airline#extensions#tabline#enabled = 1	" enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'	" show just the filename

" CtrlP settings
let g:ctrlp_map = '<c-p>'	" map <c-p> to :CtrlP
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '.*'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'find %s -type f' 

" KEY Mappings 
""""""""""""""""
map <C-n> :NERDTreeToggle<CR>

colorscheme molokai
