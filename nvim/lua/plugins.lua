require('funcs.helpers')

local Plug = vim.fn['plug#']
vim.fn['plug#begin']('~/.config/nvim/plugged')

Plug('neovim/nvim-lspconfig')                                   -- lsp
Plug('Shougo/deoplete-lsp')                                     -- autocomplete
Plug('Shougo/deoplete.nvim', {['do'] = ':UpdateRemotePlugins' })
Plug('google/vim-searchindex')                                  -- index search results
Plug('Yggdroot/indentLine')                                     -- show indent pairings
Plug('Valloric/MatchTagAlways')                                 -- show matched tags
Plug('ntpeters/vim-better-whitespace')                          -- trailing whitespace
Plug('tversteeg/registers.nvim')                                -- view y/p registers
Plug('vim-airline/vim-airline')                                 -- status line
Plug('vim-airline/vim-airline-themes')                          -- status line themes
Plug('mhinz/vim-signify')                                       -- visible hg changes
Plug('mhinz/vim-startify')                                      -- vim start screen
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

-- load in custom vim script plugins
vim.cmd('source ~/.config/nvim/custom_plugins/sub_visual.vim')

-- Plugin config.

-- async
vim.g.lsp_async_completion = 1
vim.g.lsp_signs_enabled = 1
vim.g.lsp_diagnostics_echo_cursor = 1
vim.g.lsp_document_code_action_signs_enabled = 0
vim.g.asyncomplete_auto_popup = 1
vim.g.asyncomplete_auto_completeopt = 0

-- enable autocomplete
vim.g['deoplete#enable_at_startup'] = 1

-- indentLine
vim.g.indentLine_char = '|'
vim.g.indentLine_showFirstIndentLevel = 1
vim.g.indentLine_indentLevel = 10
vim.g.indentLine_fileTypeExclude = { 'startify' }

-- vim-better-whitespace
vim.g.better_whitespace_enabled = 1
vim.g.strip_whitespace_on_save = 1

-- fzf
vim.g.fzf_action = {
  ['ctrl-t'] = 'tab split',
  ['ctrl-v'] = 'vsplit'
}

-- signify
vim.g.signify_update_on_focusgained = 1
vim.g.signify_vcs_list = 'hg'

-- vim-airline
vim.g['airline#extensions#tabline#enabled'] = 1
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme ='raven'

-- vim-lengthmatters
vim.fn['lengthmatters#highlight']('ctermbg=2 ctermfg=5')

-- registers
vim.cmd('hi RegistersWindow ctermbg=black')
vim.g.registers_window_border = 'rounded'
vim.g.registers_window_min_height = 15
vim.g.registers_window_max_width = 100

-- telescope
local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      width = 0.75
    },
    mappings = {
      i = {
        ['<c-j>'] = actions.move_selection_next,
        ['<c-k>'] = actions.move_selection_previous,
        ['<c-q>'] = actions.send_to_qflist,
      },
      n = {
        ['<c-j>'] = actions.move_selection_next,
        ['<c-k>'] = actions.move_selection_previous,
        ['<c-q>'] = actions.send_to_qflist,
      },
    },
  },
  extensions = {
    ['fzf'] = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = 'smart_case',
    },
    ['ui-select'] = {
      require('telescope.themes').get_dropdown {
      }
    }
  }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('ui-select')

-- hop
require('hop').setup {
  multi_windows = true
}

-- treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'bash', 'c', 'cpp', 'java', 'javascript', 'lua',
    'markdown', 'proto', 'python', 'typescript', 'yaml'
  },
  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
