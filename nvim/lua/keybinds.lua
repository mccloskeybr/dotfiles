require("funcs.map_funcs")
require("funcs.helpers")

-- remove search highlighting
nnoremap("<Leader><space>", "<cmd>noh<CR>")
-- search visual block
vnoremap("<Leader>//", "y/<CR>")

-- telescope
nnoremap("<Leader>lg", "<cmd>Telescope live_grep<CR>")
-- hop
nnoremap("<Leader>e", "<cmd>HopChar1<CR>")

-- lsp
nnoremap("<Leader>vj", "<cmd>vsplit<CR><cmd>LspDefinition<CR>")
nnoremap("<Leader>jr", "<cmd>LspReferences<CR>")
nnoremap("<Leader>c", "<cmd>LspCodeAction<CR>")

-- smooth scroll
nnoremap_silent("<C-b>", "<cmd>call smooth_scroll#up(&scroll, 0, 2)<CR>")
nnoremap_silent("<C-f>", "<cmd>call smooth_scroll#down(&scroll, 0, 2)<CR>")

-- yank over ssh
vmap("<C-c>", "<Plug>(operator-poweryank-osc52)")
-- substitute visual selection
vmap("<Leader>z", "<Esc>:%s/<C-r>=GetVisual()<CR>/")

-- tabs
nnoremap_silent("H", "<cmd>silent <cmd>tabp<CR>")
nnoremap_silent("L", "<cmd>silent <cmd>tabn<CR>")
nnoremap("<Leader>1", "1gt")
nnoremap("<Leader>2", "2gt")
nnoremap("<Leader>3", "3gt")
nnoremap("<Leader>4", "4gt")
nnoremap("<Leader>5", "5gt")
nnoremap("<Leader>6", "6gt")
nnoremap("<Leader>7", "7gt")
nnoremap("<Leader>8", "8gt")
nnoremap("<Leader>t", "<cmd>tabnew<CR>")

-- splits
nnoremap("<Leader>v", "<cmd>vsplit<CR>")
nnoremap("<Leader>h", "<cmd>split<CR>")

do_if_exists(os.getenv("HOME") .. "/.config/nvim/lua/local/keybinds.lua")
