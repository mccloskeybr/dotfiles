return {
  'tpope/vim-projectionist',
  lazy = false,
  keys = {
    { '<Leader>rh', '<cmd>Eheader<CR>' },
    { '<Leader>rc', '<cmd>Eimpl<CR>' },
    { '<Leader>rt', '<cmd>Etest<CR>' },
    { '<Leader>rb', '<cmd>Ebuild<CR>' },
  },
  init = function()
      vim.g.projectionist_heuristics = {
      ['*'] = {
        ['*.cc'] = {
          alternate = {
            '{dirname}/{basename}.h',
            '{dirname}/{basename}_test.cc',
            '{dirname}/BUILD',
          },
          type = 'impl'
        },
        ['*.h'] = {
          alternate = {
            '{dirname}/{basename}.cc',
            '{dirname}/{basename}_test.cc',
            '{dirname}/BUILD',
          },
          type = 'header'
        },
        ['*_test.cc'] = {
          alternate = {
            '{dirname}/{basename}.h',
            '{dirname}/{basename}.h',
            '{dirname}/BUILD',
          },
          type = 'test'
        },
        ['BUILD'] = {
          type = 'build'
        }
      }
    }
  end
}
