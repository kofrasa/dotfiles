
" Vim Options
set number	" show line number
set tabstop=4	" size of hard tab stop
set shiftwidth=4        " size of an indent
set smarttab	" make 'tab' inset indents instead of tabs
set expandtab	" always use spaces instead of tab characters

syntax on

" Setup Vundle
" $ `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin() "required

" Add Plugins with Vundle
Plugin 'gmarik/Vundle.vim'	" load this first to manage vundle
Plugin 'bling/vim-airline'	" show open buffers
Plugin 'derekwyatt/vim-scala'   " scala plugin
Plugin 'fatih/vim-go'   " golang plugin
Plugin 'flazz/vim-colorschemes'	" color schemes
Plugin 'guns/vim-clojure-static'    " clojure runtime
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
Plugin 'tpope/vim-sexp-mappings-for-regular-people' " mapping s-expressions
Plugin 'tpope/vim-surround'

call vundle#end()               " required
filetype plugin indent on       " required

" Update plugins
" $ `vim +PluginInstall +qall` or :PluginInstall inside vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Global Options
let g:go_disable_autoinstall = 0
let g:neocomplete#enable_at_startup = 1
set wildignore+=.*

" Vim-Airline settings
let g:airline#extensions#tabline#enabled = 1	" enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'	" show just the filename

" CtrlP settings
let g:ctrlp_cmd = 'CtrlP'	" command for :CtrlP
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_user_command = 'find %s -type f' 	" custom file listing command
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(o|so|swp|zip|gz|pyc|class)$'
  \}

" KEY Mappings 
""""""""""""""""
" toggle nerd tree
map <c-n> :NERDTreeToggle<CR>
" toggle ctrl-p
map <c-p> :CtrlP<CR>


colorscheme molokai

