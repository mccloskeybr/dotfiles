require("funcs.helpers")

local Plug = vim.fn['plug#']
vim.fn['plug#begin']('~/.config/nvim/plugged')

Plug('prabirshrestha/async.vim')                     -- async lib base
Plug('prabirshrestha/vim-lsp')                       -- base lsp
Plug('prabirshrestha/asyncomplete-lsp.vim')          -- async lsp
Plug('prabirshrestha/asyncomplete-ultisnips.vim')    -- async ultisnips
Plug('prabirshrestha/asyncomplete.vim')              -- async autocomplete
Plug('google/vim-searchindex')                       -- index search results
Plug('SirVer/ultisnips')                             -- snippets
Plug('honza/vim-snippets')                           -- snippets package
Plug('Yggdroot/indentLine')                          -- show indent pairings
Plug('Valloric/MatchTagAlways')                      -- highlight matching tags
Plug('ntpeters/vim-better-whitespace')               -- trailing whitespace
Plug('junegunn/fzf')                                 -- fuzzy file search
Plug('junegunn/fzf.vim')                             -- fzf vim
Plug('junegunn/vim-peekaboo')                        -- show contents of registers
Plug('vim-airline/vim-airline')                      -- status line
Plug('vim-airline/vim-airline-themes')               -- status line themes
Plug('mhinz/vim-signify')                            -- visible hg changes
Plug('mhinz/vim-startify')                           -- vim start screen
Plug('tpope/vim-sensible')                           -- sensible defaults
Plug('whatyouhide/vim-lengthmatters')                -- highlight overly-long lines
Plug('machakann/vim-highlightedyank')                -- highlighted yank
Plug('haya14busa/vim-poweryank')                     -- yank over ssh
Plug('osyo-manga/vim-over')                          -- show substitutes
Plug('terryma/vim-smooth-scroll')                    -- sensible scroll speeds
Plug('christoomey/vim-tmux-navigator')               -- vim/tmux navigation
Plug('preservim/vimux')                              -- tmux interact in vim
Plug('nvim-lua/plenary.nvim')                        -- dependency for nvim
Plug('nvim-telescope/telescope.nvim')                -- telescope
Plug('phaazon/hop.nvim')                             -- nvim easysearch and hopping
Plug('nvim-treesitter/nvim-treesitter')              -- syntax highlighting

do_if_exists(os.getenv("HOME") .. "/.config/nvim/lua/local/plugins.lua")

vim.fn['plug#end']()

-- load in custom vim script plugins
vim.cmd("source ~/.config/nvim/custom/sub_visual.vim")

-- Plugin config.

-- async
vim.g.lsp_async_completion = 1
vim.g.lsp_signs_enabled = 1
vim.g.lsp_diagnostics_echo_cursor = 1
vim.g.lsp_document_code_action_signs_enabled = 0
vim.g.asyncomplete_auto_popup = 1
vim.g.asyncomplete_auto_completeopt = 0

-- ultisnips
vim.g.UltiSnipsExpandTrigger = "<Tab>"
vim.g.UltiSnipsJumpForwardTrigger = "<c-j>"
vim.g.UltiSnipsJumpBackwardTrigger = "<c-k>"

-- indentLine
vim.g.indentLine_char='|'
vim.g.indentLine_showFirstIndentLevel=1
vim.g.indentLine_indentLevel=10
vim.g.indentLine_fileTypeExclude={"startify"}

-- vim-better-whitespace
vim.g.better_whitespace_enabled=1
vim.g.strip_whitespace_on_save=1

-- fzf
vim.g.fzf_action={}
vim.g.fzf_action['ctrl-t']='tab split'
vim.g.fzf_action['ctrl-v']='vsplit'

-- signify
vim.g.signify_update_on_focusgained = 1
vim.g.signify_vcs_list = 'hg'

-- vim-airline
vim.g['airline#extensions#tabline#enabled'] = 1
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme='raven'

-- vim-lengthmatters
vim.fn['lengthmatters#highlight']('ctermbg=2 ctermfg=5')

-- telescope
local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        preview_width = 80
        }
    },
    mappings = {
      i = {
        ["<c-j>"] = actions.move_selection_next,
        ["<c-k>"] = actions.move_selection_previous,
        ["<c-q>"] = actions.send_to_qflist,
      },
      n = {
        ["<c-j>"] = actions.move_selection_next,
        ["<c-k>"] = actions.move_selection_previous,
        ["<c-q>"] = actions.send_to_qflist,
      },
    },
  }
}

-- hop
require('hop').setup{
  multi_windows = true
}

-- treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "bash", "c", "cpp", "java", "lua",
    "markdown", "proto", "python", "yaml"
  },
  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
