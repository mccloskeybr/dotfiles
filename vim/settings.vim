set nocompatible

set encoding=utf-8
set t_Co=256

set expandtab       " use spaces, not tabs
set tabstop=2       " tab is 2 spaces not 4
set softtabstop=2
set shiftwidth=2    " update tab space for > and <
set autoindent      " auto indent
set copyindent      " copy previous indent
set shiftround      " indents a multiple of shiftwidth
set smarttab        " backspace eats a whole tab
set cindent
set breakindent     " indent when linewrap
set nowrap          " disable line wrapping

set hlsearch        " highlight all search patterns
set incsearch       " search as chars are entered
set ignorecase      " case-insensitive search
set smartcase       " remember previous searches

set autoread        " auto reload file on change
set laststatus=2    " always display status line

set number          " numbered lines
set ruler           " show current row, col, etc
set mouse=a         " mouse isn't useless
set splitbelow      " preview window at bottom
set pumheight=15    " pop up height
set ttyfast         " smooth redraw

set scrolloff=5     " n lines to show past relevancy

set completeopt=menuone,noinsert,noselect,preview

syntax on

" swp file saved
set noswapfile
set directory=""

" persistent undo
let undo_dir=$HOME.'/.vim/undo'
if !isdirectory(undo_dir)
  call mkdir(undo_dir, 'p')
endif
set undofile
let &undodir=undo_dir

