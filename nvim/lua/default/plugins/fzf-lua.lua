require('default.funcs.helpers')
return {
  'ibhagwan/fzf-lua',
  event = 'VimEnter',
  keys = {
    {
      '<Leader>ff',
      mode = {'n'},
      function()
        require('fzf-lua').files({
          cwd = get_project_root(),
          previewer = 'false',
        })
      end,
    },
    {
      '<Leader>fb',
      mode = {'n'},
      function()
        require('fzf-lua').buffers()
      end,
    },
    {
      '<Leader>fg',
      mode = {'n'},
      function()
        require('fzf-lua').grep({
          cwd = get_project_root(),
        })
      end,
    },
    {
      '<Leader>fg',
      mode = {'v'},
      function()
        require('fzf-lua').grep({
          cwd = get_project_root(),
          search = get_visual_selection(),
        })
      end,
    },
    {
      '<Leader>fo',
      mode = {'n'},
      function()
        require('fzf-lua').oldfiles()
      end,
    },
    {
      '<Leader>fr',
      mode = {'n'},
      function()
        require('fzf-lua').resume()
      end,
    },
  },
  config = function()
    require('fzf-lua').setup({
      file_ignore_patterns = { '%.orig$' },
      multiprocess = true,
      winopts = {
        fullscreen = true,
        preview = {
          layout = 'vertical',
        },
      },
      files = { previewer = 'false' },
      oldfiles = { previewer = 'false' },
    })
  end
}
