-- DEFAULT
dashboard_header = {
  os.date('< %m-%d-%y  ::  %H:%M:%S >'), '',
  ' _____     ______     ______   ______     __  __     __         ______  ',
  '/\\  __-.  /\\  ___\\   /\\  ___\\ /\\  __ \\   /\\ \\/\\ \\   /\\ \\       /\\__  _\\ ',
  '\\ \\ \\/\\ \\ \\ \\  __\\   \\ \\  __\\ \\ \\  __ \\  \\ \\ \\_\\ \\  \\ \\ \\____  \\/_/\\ \\/ ',
  ' \\ \\____-  \\ \\_____\\  \\ \\_\\    \\ \\_\\ \\_\\  \\ \\_____\\  \\ \\_____\\    \\ \\_\\ ',
  '  \\/____/   \\/_____/   \\/_/     \\/_/\\/_/   \\/_____/   \\/_____/     \\/_/ '
}

require('packer').use({
  'glepnir/dashboard-nvim',
  config = function()
    local db = require('dashboard')
    db.custom_header = dashboard_header
    db.custom_center = {
      { desc = 'Find file', action = 'Telescope find_files' },
      { desc = 'Live grep', action = 'Telescope live_grep' },
    }
    db.custom_footer = { 'Number of plugins: ' .. #vim.tbl_keys(packer_plugins) }

    vim.cmd('hi DashboardHeader ctermfg=167')
    vim.cmd('hi DashboardCenter ctermfg=grey')
    vim.cmd('hi DashboardFooter ctermfg=239')

    db.header_pad = 20
    db.center_pad = 3
    db.footer_pad = 3
  end
})
