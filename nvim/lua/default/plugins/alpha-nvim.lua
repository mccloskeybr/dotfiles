return {
  'goolord/alpha-nvim',
  dependencies = { dir = '~/autumn-nvim' },
  event = 'VimEnter',
  opts = function()
    local db = require('alpha.themes.dashboard')
    db.section.header.val = {
      '                       ' .. os.date('< %m-%d-%y  ::  %H:%M:%S >') .. '                       ', '',
      [[  _____     ______     ______   ______     __  __     __         ______  ]],
      [[ /\  __-.  /\  ___\   /\  ___\ /\  __ \   /\ \/\ \   /\ \       /\__  _\ ]],
      [[ \ \ \/\ \ \ \  __\   \ \  __\ \ \  __ \  \ \ \_\ \  \ \ \____  \/_/\ \/ ]],
      [[  \ \____-  \ \_____\  \ \_\    \ \_\ \_\  \ \_____\  \ \_____\    \ \_\ ]],
      [[   \/____/   \/_____/   \/_/     \/_/\/_/   \/_____/   \/_____/     \/_/ ]]
    }
    db.section.buttons.val = {
      db.button('p', '  Plugins', '<cmd>Lazy<CR>'),
      db.button('f', '  Find File', '<cmd>Telescope find_files<CR>'),
      db.button('l', '  Live Grep', '<cmd>Telescope live_grep<CR>'),
      db.button('o', '  Old Files', '<cmd>Telescope oldfiles<CR>'),
      db.button('d', '  Dotfiles', '<cmd>e ~/.dotfiles<CR>'),
      db.button('q', '  Quit', '<cmd>qa!<CR>'),
    }

    for _, button in ipairs(db.section.buttons.val) do
      button.opts.hl = 'AlphaButtons'
      button.opts.hl_shortcut = 'AlphaShortcut'
    end
    db.section.header.opts.hl = 'AlphaHeader'
    db.section.footer.opts.hl = 'AlphaFooter'

    db.opts.layout = {
      { type = 'padding', val = 20 },
      db.section.header,
      { type = 'padding', val = 3 },
      db.section.buttons,
      { type = 'padding', val = 3 },
      db.section.footer,
    }
    return db
  end,
  config = function(_, db)
    require('alpha').setup(db.opts)
    -- set footer after lazy has finished uploading
    vim.api.nvim_create_autocmd('User', {
      pattern = 'LazyVimStarted',
      callback = function()
        local stats = require('lazy').stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        db.section.footer.val = stats.loaded .. ' plugins loaded (of ' .. stats.count .. ') in ' .. ms .. 'ms.'
        pcall(vim.cmd.AlphaRedraw)
      end,
    })

    local colors = require('autumn-nvim.colors').setup()
    vim.api.nvim_set_hl(0, 'AlphaHeader', { fg = colors.rose.hex })
    vim.api.nvim_set_hl(0, 'AlphaButtons', { fg = colors.gold_crayola.hex })
    vim.api.nvim_set_hl(0, 'AlphaShortcut', { fg = colors.mint.hex })
    vim.api.nvim_set_hl(0, 'AlphaFooter', { fg = colors.cream_coffee.hex })
  end
}
