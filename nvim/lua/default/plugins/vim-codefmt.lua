return {
  'google/vim-codefmt',
  dependencies = { 'google/maktaba' },
  event = 'VeryLazy',
  config = function()
    vim.cmd([[
      augroup autoformat_settings
        autocmd FileType borg,gcl AutoFormatBuffer gclfmt
        autocmd FileType c,cpp AutoFormatBuffer clang-format
        autocmd FileType java AutoFormatBuffer google-java-format
        autocmd FileType markdown AutoFormatBuffer mdformat
        autocmd FileType python AutoFormatBuffer pyformat
        autocmd FileType textpb AutoFormatBuffer text-proto-format
        autocmd FileType proto AutoFormatBuffer protofmt
        autocmd FileType sql AutoFormatBuffer format_sql
      augroup END
    ]])
  end
}
