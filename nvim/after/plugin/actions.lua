require('default.funcs.map_funcs')
require('default.funcs.helpers')

-- TODO: check out overseer https://github.com/stevearc/overseer.nvim

require('packer').use({
  'lpoto/actions.nvim',
  requires = {
    'nvim-telescope/telescope.nvim'
  },
  config = function()
    require('actions').setup({
      actions = {
        ['clean (all)'] = function()
          return {
            steps = {
              { 'build_cleaner' }
            }
          }
        end,
        ['clean'] = function()
          return {
            steps = {
              { 'build_cleaner', get_build_target() },
            }
          }
        end,
        ['build'] = function()
          return {
            steps = {
              { 'blaze', 'build', get_build_target() },
            }
          }
        end,
        ['test'] = function()
          return {
            steps = {
              { 'blaze', 'test', get_test_target() },
            }
          }
        end,
      },
    })

    nnoremap('<Leader>a', '<cmd>lua require("actions.telescope").available_actions()<CR>')
  end
})
