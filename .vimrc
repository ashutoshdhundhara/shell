" Basic configuration
set number
syntax on
set cursorline

" Highlight search results as you type
set incsearch
set hlsearch

" Show matching parentheses
set showmatch

" Enable line wrapping
set wrap

" Enable line continuation
set linebreak
set showbreak=+++

" Set tab and space settings
set tabstop=4
set shiftwidth=4
set expandtab

" Enable file type detection
filetype plugin indent on

" Enable autocompletion
set completeopt=menuone,noselect

" Enable 256 colors
if has("termguicolors")
  set termguicolors
endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    Plug 'tpope/vim-sensible'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-airline/vim-airline'
call plug#end()
