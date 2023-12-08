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
    Plug 'junegunn/fzf'
    Plug 'valloric/youcompleteme'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/syntastic'
    Plug 'airblade/vim-gitgutter'
    Plug 'altercation/vim-colors-solarized'
    Plug 'majutsushi/tagbar'
    Plug 'kien/ctrlp.vim'
call plug#end()

" Enable YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_complete_in_comments_and_strings = 1
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" Enable semantic completion (requires compilation with language support)
let g:ycm_semantic_completion_enabled = 1

" Theme
"let g:solarized_termcolors=256
"syntax enable
"set background=dark
"colorscheme solarized
