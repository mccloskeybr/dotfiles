require('packer').use({
  'nvim-treesitter/nvim-treesitter',
  -- breaking change (removal of TS* highlight groups)
  commit = '4cccb6f494eb255b32a290d37c35ca12584c74d0',
  run = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'bash', 'c', 'cpp', 'java', 'javascript', 'lua',
        'proto', 'python', 'typescript', 'yaml'
      },
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end
})
