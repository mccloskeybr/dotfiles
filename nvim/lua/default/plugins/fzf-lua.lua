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
      '<Leader>fd',
      mode = {'n'},
      function() require('fzf-lua').lsp_declarations() end,
    },
    {
      '<Leader>fr',
      mode = {'n'},
      function() require('fzf-lua').lsp_references() end,
    },
    {
      '<Leader>fc',
      mode = {'n'},
      function() require('fzf-lua').lsp_code_actions() end,
    },
    {
      '<Leader>fb',
      mode = {'n'},
      function() require('fzf-lua').buffers() end,
    },
    {
      '<Leader>fo',
      mode = {'n'},
      function() require('fzf-lua').oldfiles() end,
    },
    {
      '<Leader>fR',
      mode = {'n'},
      function() require('fzf-lua').resume() end,
    },
  },
  config = function()
    require('fzf-lua').setup({
      file_ignore_patterns = { '%.orig$', '%.rpclog$' },
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
