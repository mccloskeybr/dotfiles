vim.g.startup_bookmarks = {
  ['q'] = '~/.dotfiles/',
  ['w'] = '~/.dotfiles/nvim/',
}

-- total line length for each bookmark.
bookmark_line_length = 30

banner = {
  ' _____     ______     ______   ______     __  __     __         ______  ',
  '/\\  __-.  /\\  ___\\   /\\  ___\\ /\\  __ \\   /\\ \\/\\ \\   /\\ \\       /\\__  _\\ ',
  '\\ \\ \\/\\ \\ \\ \\  __\\   \\ \\  __\\ \\ \\  __ \\  \\ \\ \\_\\ \\  \\ \\ \\____  \\/_/\\ \\/ ',
  ' \\ \\____-  \\ \\_____\\  \\ \\_\\    \\ \\_\\ \\_\\  \\ \\_____\\  \\ \\_____\\    \\ \\_\\ ',
  '  \\/____/   \\/_____/   \\/_/     \\/_/\\/_/   \\/_____/   \\/_____/     \\/_/ '
}

require('packer').use({
	'startup-nvim/startup.nvim',
	config = function()
    local bookmark_text = { }
    local bookmark_mappings = {}
    for key, file in pairs(vim.g.startup_bookmarks) do
      local key_text = '[' .. key .. ']'
      local text_length = string.len(key_text .. file)
      bookmark_text[#bookmark_text + 1] =
        key_text ..
        string.rep(' ', bookmark_line_length - text_length) ..
        file
      bookmark_mappings[key] = '<cmd>e ' .. file .. '<CR>'
    end

    local function clock()
      return os.date('< %m-%d-%y  ::  %H:%M:%S >')
    end

    require('startup').setup({
      clock = {
        type = 'text',
        align = 'center',
        fold_section = false,
        title = 'Time',
        highlight = 'Statement',
        default_color = '',
        content = { clock() },
      },
      title = {
        type = 'text',
        align = 'center',
        fold_section = false,
        title = 'Title',
        highlight = 'Statement',
        default_color = '',
        content = banner,
      },
      quote = {
        type = 'text',
        align = 'center',
        fold_section = false,
        title = 'Quote',
        margin = 5,
        highlight = 'Statement',
        default_color = '',
        content =  require('startup.functions').quote(),
      },
      bookmarks = {
        type = 'text',
        align = 'center',
        fold_section = false,
        title = 'Bookmarks',
        highlight = 'String',
        content = bookmark_text,
      },
      oldfiles = {
        type = 'oldfiles',
        align = 'center',
        fold_section = false,
        title = 'Oldfiles',
        highlight = 'String',
        default_color = '',
        oldfiles_directory = false,
        oldfiles_amount = 10,
      },
      parts = { 'clock', 'title', 'quote', 'bookmarks', 'oldfiles' },
      options = {
        after = function()
          require('startup.utils').oldfiles_mappings()
          require('startup').create_mappings(bookmark_mappings)
        end,
        mapping_keys = true,
        paddings = { 5, 3, 3, 5, 3 },
      },
      mappings = {
        execute_command = '<CR>',
        open_file = '<CR>',
        open_section = '<TAB>',
        open_help = '?',
      },
    })
	end
})
