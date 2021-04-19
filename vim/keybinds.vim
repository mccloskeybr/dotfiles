" Remove search highlighting
nnoremap <Leader><space> :noh<CR>

" Press // in visual mode to search selected text
vnoremap // y/<C-R>"<CR>

" copy over ssh via ctrl-c
vmap <C-c> y:call SendViaOSC52(getreg('"'))<cr>

" spell check
nnoremap <Leader>s :setlocal spell! spelllang=en_us<CR>

" nerd tree
nnoremap <Leader>tr :NERDTreeToggle<CR>

" tagbar
nnoremap <Leader>tb :TagbarToggle<CR>

" fzf
nnoremap <Leader>f :FZF<space>

" easymotion
noremap <silent><expr> /  incsearch#go(Config_incsearch())
noremap <silent><expr> ?  incsearch#go(Config_incsearch({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(Config_incsearch({'is_stay': 1}))
noremap <silent><expr> <Space>/ incsearch#go(Config_easyfuzzymotion())

" tab remaps
nnoremap <silent> H :silent :tabp<CR>
nnoremap <silent> L :silent :tabn<CR>
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>t :tabnew<CR>

" vsplit
nnoremap <Leader>v :vsplit<space>

