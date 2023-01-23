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
    -- global projectionist config is bad practice but i basically
    -- only work with cpp anyway.
    vim.g.projectionist_heuristics = {
      ['*'] = {
        ['*.h'] = {
          alternate = {
            '{dirname}/{basename}.cc',
            '{dirname}/{basename}_test.cc',
            '{dirname}/BUILD',
          },
          type = 'header'
        },
        ['*.cc'] = {
          alternate = {
            '{dirname}/{basename}.h',
            '{dirname}/{basename}_test.cc',
            '{dirname}/BUILD',
          },
          type = 'impl'
        },
        ['*_test.cc'] = {
          alternate = {
            '{dirname}/{basename}.h',
            '{dirname}/{basename}.cc',
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
