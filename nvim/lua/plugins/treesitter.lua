require('packer').use({
  'nvim-treesitter/nvim-treesitter',
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
