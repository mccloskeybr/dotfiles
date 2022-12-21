require('packer').use({
  'glepnir/dashboard-nvim',
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
      { desc = 'Dotfiles', icon = '    ', action = 'e ~/.dotfiles' },
      { desc = 'Quit', icon = '        ', action = 'qa!' },
    }
    db.custom_footer = { #vim.tbl_keys(packer_plugins) .. ' plugins loaded.' }

    vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#C73846'})
    vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = '#81A284' })
    vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = '#8A6A6A' })

    db.header_pad = 20
    db.center_pad = 3
    db.footer_pad = 3
  end
})
