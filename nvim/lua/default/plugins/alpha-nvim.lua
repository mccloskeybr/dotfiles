return {
  'goolord/alpha-nvim',
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
      db.button('l', '  Lazy', '<cmd>Lazy<CR>'),
      db.button('d', '  Dotfiles', '<cmd>Oil ~/.dotfiles<CR>'),
      db.button('q', '  Quit', '<cmd>qa!<CR>'),
    }

    db.opts.layout = {
      { type = 'padding', val = 20 },
      db.section.header,
      { type = 'padding', val = 3 },
      db.section.buttons,
      { type = 'padding', val = 3 },
      db.section.footer,
    }

    -- manually define hl groups for colorscheme to set
    for _, button in ipairs(db.section.buttons.val) do
      button.opts.hl = 'AlphaButtons'
      button.opts.hl_shortcut = 'AlphaShortcut'
    end
    db.section.header.opts.hl = 'AlphaHeader'
    db.section.footer.opts.hl = 'AlphaFooter'

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
  end
}
