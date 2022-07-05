local banner = {
  " _____     ______     ______   ______     __  __     __         ______  ",
  "/\\  __-.  /\\  ___\\   /\\  ___\\ /\\  __ \\   /\\ \\/\\ \\   /\\ \\       /\\__  _\\ ",
  "\\ \\ \\/\\ \\ \\ \\  __\\   \\ \\  __\\ \\ \\  __ \\  \\ \\ \\_\\ \\  \\ \\ \\____  \\/_/\\ \\/ ",
  " \\ \\____-  \\ \\_____\\  \\ \\_\\    \\ \\_\\ \\_\\  \\ \\_____\\  \\ \\_____\\    \\ \\_\\ ",
  "  \\/____/   \\/_____/   \\/_/     \\/_/\\/_/   \\/_____/   \\/_____/     \\/_/ "
}

vim.g.startup_bookmarks = {
  ["q"] = '~/.dotfiles/',
  ["w"] = '~/.dotfiles/nvim/',
}

bookmark_text = { }
bookmark_mappings = {}
for key, file in pairs(vim.g.startup_bookmarks) do
    bookmark_text[#bookmark_text + 1] = "[" .. key .. "] " .. file
    bookmark_mappings[key] = "<cmd>e " .. file .. "<CR>"
end

local function clock()
  local clock = os.date "< %m-%d-%y  :::  %H:%M:%S >"
  return clock
end

require("startup").setup({
  clock = {
    type = "text",
    align = "center",
    fold_section = false,
    title = "Time",
    highlight = "Statement",
    default_color = "",
    content = { clock() },
  },
  title = {
    type = "text",
    align = "center",
    fold_section = false,
    title = "Title",
    highlight = "Statement",
    default_color = "",
    content = banner,
  },
  quote = {
    type = "text",
    align = "center",
    fold_section = false,
    title = "Quote",
    margin = 5,
    highlight = "Statement",
    default_color = "",
    content =  require("startup.functions").quote(),
  },
  bookmarks = {
    type = "text",
    align = "center",
    fold_section = false,
    title = "Bookmarks",
    highlight = "String",
    content = bookmark_text,
  },
  parts = { "clock", "title", "quote", "bookmarks" },
  options = {
    after = function()
      require("startup").create_mappings(bookmark_mappings)
    end,
    mapping_keys = true,
    paddings = { 5, 3, 3, 5 },
  },
  mappings = {
    execute_command = "<CR>",
    open_file = "<CR>",
    open_section = "<TAB>",
    open_help = "?",
  },
})
