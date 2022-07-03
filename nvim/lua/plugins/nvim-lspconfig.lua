require("funcs.map_funcs")

nnoremap("<Leader>df", "lua vim.diagnostic.open_float()")
nnoremap("<Leader>dN", "lua vim.diagnostic.goto_prev()")
nnoremap("<Leader>dn", "lua vim.diagnostic.goto_next()")

nnoremap("<Leader>lc", "<cmd>lua vim.lsp.buf.code_action()<CR>")
nnoremap("<Leader>lh", "<cmd>lua vim.lsp.buf.hover()<CR>")
nnoremap("<Leader>ld", "<cmd>lua vim.lsp.buf.definition()<CR>")
nnoremap("<Leader>lD", "<cmd>lua vim.lsp.buf.declaration()CR>")
nnoremap("<Leader>jr", "<cmd>lua vim.lsp.buf.references()<CR>")
