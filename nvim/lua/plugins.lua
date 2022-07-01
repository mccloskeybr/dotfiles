require('funcs.helpers')

local Plug = vim.fn['plug#']
vim.fn['plug#begin']('~/.config/nvim/plugged')

Plug('neovim/nvim-lspconfig')                                   -- lsp
Plug('Shougo/deoplete-lsp')                                     -- autocomplete
Plug('Shougo/deoplete.nvim', {['do'] = ':UpdateRemotePlugins' })
Plug('Yggdroot/indentLine')                                     -- show indent pairings
Plug('Valloric/MatchTagAlways')                                 -- show matched tags
Plug('ntpeters/vim-better-whitespace')                          -- trailing whitespace
Plug('tversteeg/registers.nvim')                                -- view y/p registers
Plug('nvim-lualine/lualine.nvim')                               -- lua statusline
Plug('mhinz/vim-signify')                                       -- visible hg changes
Plug('startup-nvim/startup.nvim')                               -- startup dash
Plug('whatyouhide/vim-lengthmatters')                           -- highlight long lines
Plug('machakann/vim-highlightedyank')                           -- highlighted yank
Plug('haya14busa/vim-poweryank')                                -- yank over ssh
Plug('terryma/vim-smooth-scroll')                               -- smooth scroll
Plug('christoomey/vim-tmux-navigator')                          -- vim/tmux navigation
Plug('preservim/vimux')                                         -- tmux interact in vim
Plug('nvim-lua/plenary.nvim')                                   -- lua async module
Plug('nvim-telescope/telescope.nvim')                           -- out of file grep
Plug('nvim-telescope/telescope-fzf-native.nvim', {['do'] = 'make' })
Plug('nvim-telescope/telescope-ui-select.nvim')                 -- use sleek telescope ui
Plug('phaazon/hop.nvim')                                        -- in-file jumping
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'}) -- syntax highlighting

do_if_exists(os.getenv('HOME') .. '/.config/nvim/lua/local/plugins.lua')

vim.fn['plug#end']()

-- load plugin configurations
do_all_in_directory(os.getenv('HOME') .. '/.config/nvim/lua/plugins/')
