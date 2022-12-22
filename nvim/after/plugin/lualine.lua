require('packer').use({
  'nvim-lualine/lualine.nvim',
  commit = '5f68f070e4f7158517afc55f125a6f5ed1f7db47',
  config = function()
    local colors = {
      mint = '#648767',
      teal = '#598291',
      gold = '#eec686',
      beige = '#eaead2',
      crimson  = '#d2606b',
      black_coffee = '#251d1d',
      cream_coffee = '#564343',
    }
    local autumn_theme = {
      normal = {
        a = { fg = colors.black_coffee, bg = colors.mint },
        b = { fg = colors.gold, bg = colors.cream_coffee },
        c = { fg = colors.gold, bg = colors.black_coffee },
      },
      insert = { a = { fg = colors.black_coffee, bg = colors.teal } },
      visual = { a = { fg = colors.black_coffee, bg = colors.crimson } },
      replace = { a = { fg = colors.black_coffee, bg = colors.gold } },
      inactive = {
        a = { fg = colors.beige, bg = colors.cream_coffee },
        b = { fg = colors.gold, bg = colors.black_coffee },
        c = { fg = colors.cream_coffee, bg = colors.black_coffee },
      },
    }

    require('lualine').setup({
      options = {
        icons_enabled = true,
        theme = autumn_theme,
        component_separators = '|',
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = { 'startup' },
          winbar = { 'startup' },
        },
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      winbar = {
        lualine_a = {},
        lualine_b = {
          {
            'filename',
            path = 1,
          },
        },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {'encoding', 'fileformat', 'filetype'},
        lualine_z = {}
      },
      inactive_winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            'filename',
            path = 1,
          },
        },
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      extensions = {}
    })
  end
})
