local ascii_doom = {
  "=================     ===============     ===============   ========  ========",
  "\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //",
  "|. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||",
  "| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||",
  "|. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||",
  "| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||",
  "|. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
  "| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||",
  "|_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
  "|    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
  "|    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
  "|            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
  "|         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
  "|      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
  "|   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||",
  "|.=='    _-'                                                     `' |  /==.||",
  "=='    _-'                                                            \\/   `==",
  "\\   _-'                                                                `-_   /",
  " `''                                                                      ``'"
}

local function clock()
  local clock = os.date "< %m-%d-%y  :::  %H:%M:%S >"
  return { clock }
end

require("startup").setup({
  clock = {
    type = "text",
    align = "center",
    fold_section = false,
    title = "Time",
    highlight = "Statement",
    default_color = "",
    content = clock(),
  },
  title = {
    type = "text",
    align = "center",
    fold_section = false,
    title = "Title",
    highlight = "Statement",
    default_color = "",
    content = ascii_doom,
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
  parts = { "clock", "title", "oldfiles" },
  options = {
    after = function()
      require("startup.utils").oldfiles_mappings()
    end,
    mapping_keys = true,
    paddings = { 5, 1, 5 },
  },
  mappings = {
    execute_command = "<CR>",
    open_file = "<CR>",
    open_section = "<TAB>",
    open_help = "?",
  },
})
