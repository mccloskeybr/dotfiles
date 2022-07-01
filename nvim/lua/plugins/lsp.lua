require("funcs.map_funcs")

nnoremap("<Leader>lc", "<cmd>lua vim.lsp.buf.code_action()<CR>")
nnoremap("<Leader>lh", "<cmd>lua vim.lsp.buf.hover()<CR>")
nnoremap("<Leader>jd", "<cmd>lua vim.lsp.buf.definition()<CR>")
nnoremap("<Leader>jr", "<cmd>lua vim.lsp.buf.references()<CR>")
