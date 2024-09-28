if vim.g.profile ~= 'HOME' then
  return {}
end

return {
  'dhananjaylatkar/cscope_maps.nvim',
  dependencies = { 'ibhagwan/fzf-lua' },
  keys = {
    -- refs under cursor
    {
      '<Leader>cr',
      mode = { 'n', 'v' },
      function()
        vim.cmd('Cscope find s')
      end,
    },
    -- def under cursor
    {
      '<Leader>cd',
      mode = { 'n', 'v' },
      function()
        vim.cmd('Cscope find g')
      end,
    },
  },
  config = function()
    require('cscope_maps').setup({
      disable_maps = true,
      skip_input_prompt = true,
      cscope = {
        db_file = './cscope.out',
        exec = 'cscope',
        db_build_cmd_args = { '-bR' },
        picker = 'fzf-lua',
        project_rooter = { enable = true },
      }
    })
    vim.api.nvim_create_augroup('cscope_build', {
      clear = true
    })
    vim.api.nvim_create_autocmd('BufWritePost', {
      group = 'cscope_build',
      pattern = { '*.c', '*.h' },
      callback = function ()
        vim.cmd('Cscope db build')
      end,
    })
  end
}
