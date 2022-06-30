local ascii_default = {
  "_______  _______   ________ ________  ___  ___  ___   __________",
  "|\\   ___ \\|\\  ___ \\ |\\  _____\\\\   __  \\|\\  \\|\\  \\|\\  \\ |\\___   ___\\",
  "\\ \\  \\_|\\ \\ \\   __/|\\ \\  \\__/\\ \\  \\|\\  \\ \\  \\\\\\  \\ \\  \\\\|___ \\  \\_|",
  "\\ \\  \\ \\\\ \\ \\  \\_|/_\\ \\   __\\\\ \\   __  \\ \\  \\\\\\  \\ \\  \\    \\ \\  \\",
  "  \\ \\  \\_\\\\ \\ \\  \\_|\\ \\ \\  \\_| \\ \\  \\ \\  \\ \\  \\\\\\  \\ \\  \\____\\ \\  \\",
  "   \\ \\_______\\ \\_______\\ \\__\\   \\ \\__\\ \\__\\ \\_______\\ \\_______\\ \\__\\",
  "    \\|_______|\\|_______|\\|__|    \\|__|\\|__|\\|_______|\\|_______|\\|__|",
}


require("startup").setup({
  title = {
    type = "text",
    align = "center",
    fold_section = false,
    title = "Title",
    highlight = "Statement",
    default_color = "",
    content = ascii_default,
  },
  oldfiles = {
    type = "oldfiles",
    align = "center",
    fold_section = false,
    title = "Oldfiles",
    highlight = "String",
    default_color = "",
    oldfiles_directory = false,
    oldfiles_amount = 10,
  },
  options = {
    after = function()
      require("startup.utils").oldfiles_mappings()
    end,
    mapping_keys = true,
    paddings = { 5, 5 },
  },
  mappings = {
    execute_command = "<CR>",
    open_file = "<CR>",
    open_section = "<TAB>",
    open_help = "?",
  },
  parts = { "title", "oldfiles" },
})
