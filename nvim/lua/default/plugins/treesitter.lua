return {
  'nvim-treesitter/nvim-treesitter',
  -- breaking change (removal of TS* highlight groups)
  commit = '4cccb6f494eb255b32a290d37c35ca12584c74d0',
  dependencies = {
    'nvim-treesitter/playground'
  },
  build = ':TSUpdate',
  event = 'BufReadPost',
  opts = {
    ensure_installed = {
      'bash',
      'c',
      'cpp',
      'java',
      'javascript',
      'lua',
      'proto',
      'python',
      'typescript',
      'yaml'
    },
    sync_install = false,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
  end
}
