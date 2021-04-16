set expandtab       " Use spaces, not tabs
set tabstop=2       " tab is 2 spaces not 4
set softtabstop=2
set shiftwidth=2    " update tab space for > and <"
set autoindent      " Auto indent
set nowrap          " Disable line wrapping

set hlsearch        " Highlight all search patterns
set incsearch       " Search as chars are entered
set ignorecase      " Case-insensitive search
set smartcase       " Remember previous searches

set laststatus=2    " Always display status line
set number          " Numbered lines
set ruler           " Show current row, col, etc
set encoding=utf-8

syntax on

" Persistent undo
let undo_dir=$HOME.'/.vim/undo'
if !isdirectory(undo_dir)
  call mkdir(undo_dir, 'p')
endif
set undofile
let &undodir=undo_dir

