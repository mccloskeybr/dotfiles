set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-jp/cpp-vim'                               " cpp syntax, highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'             " /enhanced/ highlighting :)
Plugin 'prabirshrestha/async.vim'                     " async base
Plugin 'prabirshrestha/vim-lsp'                       " base lsp
Plugin 'prabirshrestha/asyncomplete-lsp.vim'          " async lsp
Plugin 'prabirshrestha/asyncomplete-ultisnips.vim'    " async ultisnips
Plugin 'prabirshrestha/asyncomplete.vim'              " async autocomplete
Plugin 'easymotion/vim-easymotion'                    " line hopping
Plugin 'haya14busa/incsearch.vim'                     " better incsearch
Plugin 'haya14busa/incsearch-fuzzy.vim'               " fuzzy search
Plugin 'haya14busa/incsearch-easymotion.vim'          " easymotion x incsearch
Plugin 'SirVer/ultisnips'                             " snippets
Plugin 'honza/vim-snippets'                           " snippets package
Plugin 'JamshedVesuna/vim-markdown-preview'           " markdown preview
Plugin 'Yggdroot/indentLine'                          " show indent pairings
Plugin 'Valloric/MatchTagAlways'                      " highlight matching tags
Plugin 'jiangmiao/auto-pairs'                         " parenthesis autocomplete
Plugin 'ntpeters/vim-better-whitespace'               " trailing whitespace
Plugin 'mg979/vim-visual-multi'                       " multi cursor
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy file search
Plugin 'junegunn/fzf.vim'                             " fzf vim
Plugin 'ctrlpvim/ctrlp.vim'                           " fuzzy, ctrlp
Plugin 'preservim/nerdcommenter'                      " smart comments
Plugin 'vim-airline/vim-airline'                      " status line
Plugin 'vim-airline/vim-airline-themes'               " status line themes
Plugin 'mhinz/vim-signify'                            " visible hg changes
Plugin 'mhinz/vim-startify'                           " vim start screen
Plugin 'tpope/vim-fugitive'                           " git wrapper
Plugin 'whatyouhide/vim-lengthmatters'                " highlight overly-long lines
Plugin 'preservim/tagbar'                             " class outline


call vundle#end()

" Plugin settings
" ===============

" cpp-vim, vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1

" async
let g:lsp_async_completion = 1
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_document_code_action_signs_enabled = 0
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" ultisnips
if has('python3')
  let g:UltiSnipsExpandTrigger = "<Tab>"
  let g:UltiSnipsJumpForwardTrigger = "<c-j>"
  let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
  call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'allowlist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))
endif

" indentLine
let g:indentLine_char='|'
let g:indentLine_showFirstIndentLevel=1
let g:indentLine_indentLevel=10
let g:indentLine_fileTypeExclude=['startify']

" vim-better-whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" incsearch.vim x fuzzy x vim-easymotion
function! Config_incsearch(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction

function! Config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

" fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-v': 'vsplit' }

" ctrlp
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_use_caching=0
let g:ctrlp_cmd = 'call CdLocalRoot()<CR>:CtrlP'

" nerdcommenter
let g:NERDSpaceDelims = 1

" signify
let g:signify_update_on_focusgained = 1

" vim-markdown-preview
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_hotkey='<C-m>'

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

