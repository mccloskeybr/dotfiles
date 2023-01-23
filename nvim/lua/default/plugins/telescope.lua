require('default.funcs.helpers')
return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    'debugloop/telescope-undo.nvim',
    { 'adalessa/telescope-projectionist.nvim', commit = '532cb1e158eea43908ec0c3393559c1176adbb1b' },
  },
  cmd = 'Telescope',
  keys = {
    {
      '<Leader>tf',
      function()
        require('telescope.builtin').find_files({
          cwd = get_project_root(),
          previewer = false
        })
      end,
      mode = {'n'}
    },
    {
      '<Leader>tf',
      function()
        require('telescope.builtin').find_files({
          cwd = get_project_root(),
          previewer = false,
          default_text = get_visual_selection()
        })
      end,
      mode = {'v'}
    },
    {
      '<Leader>tl',
      function()
        require('telescope.builtin').live_grep({
          cwd = get_project_root(),
          path_display = { 'shorten' }
        })
      end,
      mode = {'n'}
    },
    {
      '<Leader>tl',
      function()
        require('telescope.builtin').live_grep({
          cwd = get_project_root(),
          path_display = { 'shorten' },
          default_text = get_visual_selection()
        })
      end,
      mode = {'v'}
    },
    { '<Leader>tr', function() require('telescope.builtin').lsp_references() end },
    { '<Leader>td', function() require('telescope.builtin').lsp_definitions() end },
    { '<Leader>tb', function() require('telescope.builtin').buffers() end },
    { '<Leader>tu', function() require('telescope').extensions.undo.undo() end },
    { '<Leader>tr', function() require('telescope').extensions.projectionist.projectionist() end },
  },
  config = function(_, opts)
    require('telescope').setup({
      defaults = {
        dynamic_preview_title = true,
        layout_strategy = 'vertical',
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown({})
        },
      }
    })
    require('telescope').load_extension('ui-select')
    require('telescope').load_extension('undo')
    require('telescope').load_extension('projectionist')
  end
}
