require("funcs.io")
require("funcs.map_funcs")

vnoremap_silent("*", "\"vy<ESC>/<C-r>\"<CR>")
nnoremap("<Leader><space>", "<cmd>noh<CR>")

vnoremap_silent("<", "<gv")
vnoremap_silent(">", ">gv")

-- eases autocomplete suggestion selection
inoremap_silent("<C-j>", "<Down>")
inoremap_silent("<C-k>", "<Up>")

vmap("<C-c>", "<Plug>(operator-poweryank-osc52)")

nnoremap("H", "<cmd>tabp<CR>")
nnoremap("L", "<cmd>tabn<CR>")
nnoremap("<Leader>1", "1gt")
nnoremap("<Leader>2", "2gt")
nnoremap("<Leader>3", "3gt")
nnoremap("<Leader>4", "4gt")
nnoremap("<Leader>5", "5gt")
nnoremap("<Leader>6", "6gt")
nnoremap("<Leader>7", "7gt")
nnoremap("<Leader>8", "8gt")
nnoremap("<Leader>t", "<cmd>tabnew<CR>")

nnoremap("<Leader>v", "<cmd>vsplit<CR>")
nnoremap("<Leader>h", "<cmd>split<CR>")

do_if_exists(os.getenv("HOME") .. "/.config/nvim/lua/local/keybinds.lua")
