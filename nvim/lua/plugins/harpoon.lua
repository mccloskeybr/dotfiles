require("funcs.map_funcs")

nnoremap("<Leader>ha", "<cmd>lua require(\"harpoon.mark\").add_file()<CR>")
nnoremap("<Leader>hu", "<cmd>lua require(\"harpoon.ui\").toggle_quick_menu()<CR>")

nnoremap("<Leader>hh", "<cmd>lua require(\"harpoon.ui\").nav_file(1)<CR>")
nnoremap("<Leader>hj", "<cmd>lua require(\"harpoon.ui\").nav_file(2)<CR>")
nnoremap("<Leader>hk", "<cmd>lua require(\"harpoon.ui\").nav_file(3)<CR>")
nnoremap("<Leader>hl", "<cmd>lua require(\"harpoon.ui\").nav_file(4)<CR>")

nnoremap("<Leader>hp", "<cmd>lua require(\"harpoon.ui\").nav_prev()<CR>")
nnoremap("<Leader>hn", "<cmd>lua require(\"harpoon.ui\").nav_next()<CR>")
