" Plugins. Configured in plugin_conf.(vim|lua) depending on language.

call plug#begin()

" vim-based plugins
Plug 'prabirshrestha/async.vim'                     " async lib base
Plug 'prabirshrestha/vim-lsp'                       " base lsp
Plug 'prabirshrestha/asyncomplete-lsp.vim'          " async lsp
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'    " async ultisnips
Plug 'prabirshrestha/asyncomplete.vim'              " async autocomplete
Plug 'google/vim-searchindex'                       " index search results
Plug 'SirVer/ultisnips'                             " snippets
Plug 'honza/vim-snippets'                           " snippets package
Plug 'Yggdroot/indentLine'                          " show indent pairings
Plug 'Valloric/MatchTagAlways'                      " highlight matching tags
Plug 'ntpeters/vim-better-whitespace'               " trailing whitespace
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy file search
Plug 'junegunn/fzf.vim'                             " fzf vim
Plug 'junegunn/vim-peekaboo'                        " show contents of registers
Plug 'preservim/nerdcommenter'                      " smart comments
Plug 'vim-airline/vim-airline'                      " status line
Plug 'vim-airline/vim-airline-themes'               " status line themes
Plug 'mhinz/vim-signify'                            " visible hg changes
Plug 'mhinz/vim-startify'                           " vim start screen
Plug 'tpope/vim-sensible'                           " sensible defaults
Plug 'whatyouhide/vim-lengthmatters'                " highlight overly-long lines
Plug 'machakann/vim-highlightedyank'                " highlighted yank
Plug 'osyo-manga/vim-over'                          " show substitutes
Plug 'terryma/vim-smooth-scroll'                    " sensible scroll speeds
Plug 'christoomey/vim-tmux-navigator'               " vim/tmux navigation
Plug 'preservim/vimux'                              " tmux interact in vim

" lua-based plugins
Plug 'nvim-lua/plenary.nvim'                        " dependency for nvim
Plug 'nvim-telescope/telescope.nvim'                " telescope
Plug 'phaazon/hop.nvim'                             " nvim easysearch and hopping
Plug 'nvim-treesitter/nvim-treesitter'              " syntax highlighting

call SourceIfExists('~/.config/nvim/local/plugins.vim')

call plug#end()

source ~/.config/nvim/plugin_conf.vim
source ~/.config/nvim/plugin_conf.lua
