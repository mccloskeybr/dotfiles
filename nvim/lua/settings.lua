require("funcs.io")

vim.o.encoding = "utf-8"
vim.o.background = "dark"

vim.o.expandtab = true        -- use spaces not tabs
vim.o.tabstop = 2             -- tab = 2 spaces
vim.o.softtabstop = 2
vim.o.shiftwidth = 2          -- update tab space for > and <
vim.o.autoindent = true       -- auto indent
vim.o.copyindent = true       -- copy prev indent
vim.o.shiftround = true       -- indents a mulitiple of shiftwidth
vim.o.smarttab = true         -- backspace eats tabs
vim.o.cindent = true
vim.o.breakindent = true      -- indent when linewrapping
vim.o.wrap = false            -- disable linewrapping

vim.o.inccommand = "nosplit"  -- live substitute visual
vim.o.hlsearch = true         -- highlight all search patterns
vim.o.incsearch = true        -- search as chars are entered
vim.o.ignorecase = true       -- ignore case
vim.o.smartcase = true        -- remember prev searches

vim.o.autoread = true         -- auto reload file on change
vim.o.laststatus = 2          -- always display status line

vim.o.number = true           -- numbered lines
vim.o.ruler = true            -- show current row, col, etc.
vim.o.mouse = "a"             -- mouse isn't useless
vim.o.splitbelow = true       -- prev window at bottom
vim.o.pumheight = 15          -- pop up height

vim.o.scrolloff = 5           -- n lines to show past relevancy

vim.o.clipboard = "unnamedplus"
vim.o.completeopt = "menuone,noinsert,noselect,preview"
vim.o.guicursor = "n-v-c-i:block"

vim.o.swapfile = false
vim.o.undodir = os.getenv("HOME") .. "/.config/nvim/undo"
vim.o.backupdir = os.getenv("HOME") .. "/.config/nvim/backup"

vim.api.nvim_create_augroup("highlight_yank", {
  clear = true,
})
vim.api.nvim_create_autocmd("TextYankPost", {
  group = "highlight_yank",
  pattern = "*",
  callback = function()
    require("vim.highlight").on_yank({ timeout = 500 })
  end,
})

do_if_exists(os.getenv("HOME") .. "/.config/nvim/lua/local/settings.lua")
