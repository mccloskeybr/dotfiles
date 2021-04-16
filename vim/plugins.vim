set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Enhanced cpp syntax highlighting
Plugin 'vim-jp/cpp-vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1

" Snippets
Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

" Autocomplete for parenthesis, etc.
Plugin 'jiangmiao/auto-pairs'

" Remove trailing whitespaces.
Plugin 'ntpeters/vim-better-whitespace'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" Multiple cursors.
Plugin 'mg979/vim-visual-multi'

" Fuzzy file search
Plugin 'junegunn/fzf'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-v': 'vsplit' }

" Smart comments
Plugin 'preservim/nerdcommenter'
let g:NERDSpaceDelims = 1

" File tree
Plugin 'preservim/nerdtree'

" Lightweight status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='raven'

" Show version control changes
Plugin 'mhinz/vim-signify'
let g:signify_vcs_list = ['hg']
let g:signify_update_on_focusgained = 1

" Class outline. Requires ctags.
Plugin 'preservim/tagbar'
let g:tagbar_width = 75
let g:tagbar_autoclose = 1

call vundle#end()

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif



