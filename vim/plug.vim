" ----------------------------------------------------------------------------
"   Plug
" ----------------------------------------------------------------------------

" Install vim-plug if we don't arlready have it
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    execute 'mkdir -p ~/.vim/plugged'
    execute 'mkdir -p ~/.vim/autoload'
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')


Plug 'guns/vim-clojure-static'    "clojure runtime
Plug 'msanders/snipmate.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace', { 'for': ['clj','cljs','cljx','clojure'] }
Plug 'tpope/vim-salve'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sexp-mappings-for-regular-people' " mapping s-expressions
Plug 'Xuyuanp/nerdtree-git-plugin'

""" Colorschemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}

""" Syntax
Plug 'tpope/vim-git'
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'fatih/vim-go', { 'for': 'go' }     
Plug 'xsbeats/vim-blade', { 'for': 'blade' }
Plug 'plasticboy/vim-markdown', { 'for': ['md', 'markdown'] }
Plug 'tpope/vim-rails', {'for': 'ruby'}

" VCS
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'

""" Completion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --gocode-completer --omnisharp-completer', 'for': ['python','ruby','java','scala','go','php'] }
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

" Make tab handle all completions
Plug 'ervandew/supertab'

" Syntastic: Code linting errors
Plug 'scrooloose/syntastic', { 'for': [ 'c', 'cpp', 'cs', 'java', 'scala', 'clojure', 'go', 'sql', 'xml', 'sh', 'ruby', 'php', 'python', 'javascript', 'json', 'css', 'html', 'markdown' ] }

" Pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'

" Fancy statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy file opener
" Plug 'kien/ctrlp.vim' <-- Not maintained any more
Plug 'ctrlpvim/ctrlp.vim'

" Rename files from within vim
Plug 'tpope/vim-eunuch'

" Make commenting easier
Plug 'tpope/vim-commentary'

" Adjust 'shiftwidth' and 'expandtab' heuristically based on the current file
Plug 'tpope/vim-sleuth'

" Split and join lines of code intelligently
Plug 'AndrewRadev/splitjoin.vim'

" Split navigation that works with tmux
Plug 'christoomey/vim-tmux-navigator'

" Change brackets and quotes
Plug 'tpope/vim-surround'

" Make vim-surround repeatable with .
Plug 'tpope/vim-repeat'

""" Custom motions

" Indent object
Plug 'michaeljsmith/vim-indent-object'

" Camel Case object
Plug 'bkad/CamelCaseMotion'

" Argument object
Plug 'vim-scripts/argtextobj.vim'

" Fugitive: Git from within Vim
Plug 'tpope/vim-fugitive'

" Find the class/method based on cursor position
Plug 'vim-scripts/pythonhelper'

" 'Vastly improved Javascript indentation and syntax support in Vim'
Plug 'pangloss/vim-javascript'

Plug 'reedes/vim-pencil'

" Visualize undo tree
Plug 'mbbill/undotree'

filetype plugin indent on                   " required!
call plug#end()
