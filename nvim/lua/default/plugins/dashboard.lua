return {
  {
    'glepnir/dashboard-nvim',
    dependencies = { dir = '~/autumn-nvim' },
    config = function()
      local db = require('dashboard')
      db.custom_header =  {
        os.date('< %m-%d-%y  ::  %H:%M:%S >'), '',
        ' _____     ______     ______   ______     __  __     __         ______  ',
        '/\\  __-.  /\\  ___\\   /\\  ___\\ /\\  __ \\   /\\ \\/\\ \\   /\\ \\       /\\__  _\\ ',
        '\\ \\ \\/\\ \\ \\ \\  __\\   \\ \\  __\\ \\ \\  __ \\  \\ \\ \\_\\ \\  \\ \\ \\____  \\/_/\\ \\/ ',
        ' \\ \\____-  \\ \\_____\\  \\ \\_\\    \\ \\_\\ \\_\\  \\ \\_____\\  \\ \\_____\\    \\ \\_\\ ',
        '  \\/____/   \\/_____/   \\/_/     \\/_/\\/_/   \\/_____/   \\/_____/     \\/_/ '
      }
      db.custom_center = {
        { desc = 'Find File', icon = '   ', action = 'Telescope find_files' },
        { desc = 'Live Grep', icon = '   ', action = 'Telescope live_grep' },
        { desc = 'Old Files', icon = '   ', action = 'Telescope oldfiles' },
        { desc = 'Dotfiles', icon = '    ', action = 'e ~/.dotfiles' },
        { desc = 'Quit', icon = '        ', action = 'qa!' },
      }
      db.custom_footer = { require('lazy').stats().count .. ' plugins loaded in ' .. require('lazy').stats().startuptime .. 'ms.' }

      db.header_pad = 20
      db.center_pad = 3
      db.footer_pad = 3

      local colors = require('autumn-nvim.colors').setup()
      vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = colors.rose.hex })
      vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = colors.gold_crayola.hex })
      vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = colors.cream_coffee.hex })
    end
  }
}
