" Remove search highlighting
nnoremap <Leader><space> :noh<CR>

" Press // in visual mode to search selected text
vnoremap // y/<C-R><CR>

" hop
nnoremap <Leader>e <cmd>HopChar1<CR>

" telescope
nnoremap <Leader>lg :Telescope live_grep<CR>

" Lsp
nnoremap <Leader>vj :vsplit<CR>:LspDefinition<CR>
nnoremap <Leader>sj :split<CR>:LspDefinition<CR>
nnoremap <Leader>jr :LspReferences<CR>
nnoremap <Leader>c :LspCodeAction<CR>

" nerd tree
nnoremap <Leader>tr :NERDTreeToggle<CR>

" nerd commenter
nnoremap <silent> <Leader>c<space> :call nerdcommenter#Comment(0, 'toggle')<CR>
vnoremap <silent> <Leader>c<space> :call nerdcommenter#Comment(0, 'toggle')<CR>

" tagbar
nnoremap <Leader>tb :TagbarToggle<CR>

" fzf
nnoremap <Leader>f :FZF<CR>

" smooth scroll
noremap <silent> <c-b> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll, 0, 2)<CR>

" copy over ssh via ctrl-c
vmap <C-c> y:call SendViaOSC52(getreg('"'))<CR>

" substitute visual selection
vmap <leader>z <Esc>:%s/<c-r>=GetVisual()<cr>/

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

" splits
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>h :split<CR>

call SourceIfExists('~/.config/nvim/local/keybinds.vim')
