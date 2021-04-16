set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-jp/cpp-vim'                   " cpp syntax, highlighting
Plugin 'octol/vim-cpp-enhanced-highlight' " /enhanced/ highlighting :)
Plugin 'SirVer/ultisnips'                 " snippets
Plugin 'jiangmiao/auto-pairs'             " parenthesis autocomplete
Plugin 'ntpeters/vim-better-whitespace'   " trailing whitespace
Plugin 'mg979/vim-visual-multi'           " multi cursor
Plugin 'junegunn/fzf'                     " fuzzy file search
Plugin 'preservim/nerdcommenter'          " smart comments
Plugin 'preservim/nerdtree'               " file tree
Plugin 'vim-airline/vim-airline'          " status line
Plugin 'vim-airline/vim-airline-themes'   " status line themes
Plugin 'mhinz/vim-signify'                " visible hg changes
Plugin 'preservim/tagbar'                 " class outline

call vundle#end()

" Plugin settings
" ===============

" cpp-vim, vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1

" ultisnips
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

" vim-better-whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-v': 'vsplit' }

" nerdcommenter
let g:NERDSpaceDelims = 1

" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='raven'

" vim-signify
let g:signify_vcs_list = ['hg']
let g:signify_update_on_focusgained = 1

" tagbar
let g:tagbar_width = 75
let g:tagbar_autoclose = 1

