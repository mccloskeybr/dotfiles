return {
  'aznhe21/actions-preview.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  event = 'VeryLazy',
  keys = {
    {
      '<Leader>lc',
      function()
        require('actions-preview').code_actions()
      end,
      mode = {'n'}
    },
  },
  config = function(_, opts)
    require('actions-preview').setup({
      telescope = {
        sorting_strategy = 'ascending',
        layout_strategy = 'vertical',
        layout_config = {
          width = 0.60,
          height = 0.75,
          prompt_position = 'top',
          preview_cutoff = 20,
        },
      },
    })
  end,
}
