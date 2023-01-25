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
    { '<Leader>ta', function() require('telescope-alternate.telescope').alternate() end },
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
        ['telescope-alternate'] = {
          mappings = {
            {
              '(.*).cc',
              {
                { '[1:remove_test_suffix].h', 'Header' },
                { '[1:remove_test_suffix]_test.cc', 'Test' },
                { '[1:remove_filename]BUILD', 'Build' },
              }
            },
            {
              '(.*).h',
              {
                { '[1].cc', 'Impl' },
                { '[1]_test.cc', 'Test' },
                { '[1:remove_filename]BUILD', 'Build' },
              }
            }
          },
          transformers = {
            -- /path/to/file -> /path/to/.
            remove_filename = function(w)
              print('build!')
              if (string.find(w, '/')) then
                return string.gsub(w, '(.*/+).*', '%1')
              end
              return ''
            end,
            -- example_test -> example. example -> example.
            remove_test_suffix = function(w)
              print(w)
              if (string.find(w, '_test.cc')) then
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
