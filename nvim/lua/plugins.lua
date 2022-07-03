require('funcs.io')

local Plug = vim.fn['plug#']
vim.fn['plug#begin']('~/.config/nvim/plugged')

Plug('neovim/nvim-lspconfig')                                   -- lsp
Plug('hrsh7th/nvim-cmp')                                        -- autocomplete
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug("saadparwaiz1/cmp_luasnip")
Plug('L3MON4D3/LuaSnip')                                        -- snippets
Plug('rafamadriz/friendly-snippets')
Plug('Yggdroot/indentLine')                                     -- show indent pairings
Plug('Valloric/MatchTagAlways')                                 -- show matched tags
Plug('ntpeters/vim-better-whitespace')                          -- trailing whitespace
Plug('tversteeg/registers.nvim')                                -- view y/p registers
Plug('nvim-lualine/lualine.nvim')                               -- lua statusline
Plug('mhinz/vim-signify')                                       -- visible hg changes
Plug('startup-nvim/startup.nvim')                               -- startup screen
Plug('haya14busa/vim-poweryank')                                -- yank over ssh
Plug('terryma/vim-smooth-scroll')                               -- smooth scroll
Plug('christoomey/vim-tmux-navigator')                          -- vim/tmux navigation
Plug('preservim/vimux')                                         -- tmux interact in vim
Plug('nvim-lua/plenary.nvim')                                   -- lua async module
Plug('nvim-telescope/telescope.nvim')                           -- telescope
Plug('nvim-telescope/telescope-fzf-native.nvim', {['do'] = 'make' })
Plug('nvim-telescope/telescope-ui-select.nvim')
Plug('ThePrimeagen/harpoon')                                    -- better vim marks
Plug('rlane/pounce.nvim')                                       -- better search motions
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'}) -- syntax highlighting

do_if_exists(os.getenv('HOME') .. '/.config/nvim/lua/local/plugins.lua')

vim.fn['plug#end']()

-- load plugin configurations
do_all_in_directory(os.getenv('HOME') .. '/.config/nvim/lua/plugins/')
