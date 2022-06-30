require("funcs.map_funcs")
require("funcs.helpers")

nnoremap("<Leader><space>", "<cmd>noh<CR>")
vnoremap("<Leader><space>", "<cmd>noh<CR>")
vnoremap("<Leader><Leader>", "y<ESC>/<C-r>\"<CR>")

vmap("<C-c>", "<Plug>(operator-poweryank-osc52)")

function telescope_find_files_cwd_project_root()
  local file = vim.fn.expand('%')
  local project_root = vim.fn.fnamemodify(file, ":p:h:s?croupier/.*?croupier/?")
  local opts = { cwd = project_root }
  require("telescope.builtin").find_files(opts)
end
nnoremap("<Leader>tf", "<cmd>lua telescope_find_files_cwd_project_root()<CR>")
nnoremap("<Leader>tl", "<cmd>Telescope live_grep<CR>")
nnoremap("<Leader>h", "<cmd>HopChar1<CR>")

nnoremap("<Leader>lc", "<cmd>lua vim.lsp.buf.code_action()<CR>")
nnoremap("<Leader>lh", "<cmd>lua vim.lsp.buf.hover()<CR>")
nnoremap("<Leader>jd", "<cmd>lua vim.lsp.buf.definition()<CR>")
nnoremap("<Leader>jr", "<cmd>lua vim.lsp.buf.references()<CR>")

nnoremap_silent("<C-b>", "<cmd>call smooth_scroll#up(&scroll, 0, 2)<CR>zz")
nnoremap_silent("<C-f>", "<cmd>call smooth_scroll#down(&scroll, 0, 2)<CR>zz")

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

nnoremap("<Leader>v", "<cmd>vsplit<CR>")
nnoremap("<Leader>h", "<cmd>split<CR>")

do_if_exists(os.getenv("HOME") .. "/.config/nvim/lua/local/keybinds.lua")
