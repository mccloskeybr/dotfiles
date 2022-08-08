-- shared config for nvim-lspconfig lsps.

local M = {}

local border = {
  {"+", "FloatBorder"},
  {"-", "FloatBorder"},
  {"+", "FloatBorder"},
  {"|", "FloatBorder"},
  {"+", "FloatBorder"},
  {"-", "FloatBorder"},
  {"+", "FloatBorder"},
  {"|", "FloatBorder"},
}

M.handlers = {
  ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
  ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
}

function M.on_attach(client, bufnr)
  vim.cmd('hi NormalFloat ctermbg=black')

  nnoremap('<Leader>dN', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
  nnoremap('<Leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
  nnoremap('<Leader>lc', '<cmd>lua vim.lsp.buf.code_action()<CR>')
  nnoremap('<C-space>', '<cmd>lua vim.lsp.buf.hover()<CR>')

  vim.api.nvim_buf_set_option(bufnr, "formatexpr", "v:lua.vim.lsp.formatexpr")
  vim.api.nvim_buf_set_option(bufnr, "tagfunc", "v:lua.vim.lsp.tagfunc")

  vim.api.nvim_create_augroup('lsp_document_highlight', {
    clear = false
  })
  vim.api.nvim_clear_autocmds({
    buffer = bufnr,
    group = 'lsp_document_highlight',
  })
  vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
    group = 'lsp_document_highlight',
    buffer = bufnr,
    callback = vim.lsp.buf.document_highlight,
  })
  vim.api.nvim_create_autocmd('CursorMoved', {
    group = 'lsp_document_highlight',
    buffer = bufnr,
    callback = vim.lsp.buf.clear_references,
  })
end

return M
