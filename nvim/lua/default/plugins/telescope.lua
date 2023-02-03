require('default.funcs.helpers')
return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    'otavioschwanck/telescope-alternate.nvim',
    'debugloop/telescope-undo.nvim',
  },
  cmd = 'Telescope',
  keys = {
    {
      '<Leader>tf',
      function()
        require('telescope.builtin').find_files({
          layout_strategy = 'vertical',
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
          layout_strategy = 'vertical',
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
          layout_strategy = 'vertical',
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
          layout_strategy = 'vertical',
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
    { '<Leader>ta', function() require('telescope-alternate.telescope').alternate() end },
  },
  config = function(_, opts)
    require('telescope').setup({
      defaults = {
        dynamic_preview_title = true,
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown({})
        },
        ['telescope-alternate'] = {
          mappings = {
            {
              pattern = '(.*)[.][cc|h]',
              targets = {
                { template = '[1:remove_test_suffix].h', label = 'Header' },
                { template = '[1:remove_test_suffix].cc', label = 'Impl' },
                { template = '[1:remove_test_suffix]_test.cc', label = 'Test' },
                { template = '[1:remove_filename]BUILD', label = 'Build' },
              }
            },
            {
              pattern = '(.*)[.][proto]',
              targets = {
                { template = '[1:remove_filename]BUILD', label = 'Build' },
              }
            },
          },
          transformers = {
            -- /path/to/file -> /path/to/.
            remove_filename = function(w)
              print('build!')
              if (string.find(w, '/') ~= nil) then
                return string.gsub(w, '(.*/+).*', '%1')
              end
              return ''
            end,
            -- example_test -> example. example -> example.
            remove_test_suffix = function(w)
              print(w)
              if (string.find(w, '_test') ~= nil) then
                return string.gsub(w, '(.*)_test', '%1')
              end
              return w
            end
          }
        },
      }
    })

    require('telescope').load_extension('ui-select')
    require('telescope').load_extension('undo')
    require('telescope').load_extension('telescope-alternate')
  end
}
