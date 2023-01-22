return {
  'nvim-lualine/lualine.nvim',
  commit = '5f68f070e4f7158517afc55f125a6f5ed1f7db47',
  dependencies = { dir = '~/autumn-nvim' },
  config = function()
    local colors = require('autumn-nvim.colors').setup()
    local autumn_theme = {
      normal = {
        a = { fg = colors.black_coffee.hex, bg = colors.mint.hex },
        b = { fg = colors.gold_crayola.hex, bg = colors.cream_coffee.hex },
        c = { fg = colors.gold_crayola.hex, bg = colors.black_coffee.hex },
      },
      insert = { a = { fg = colors.black_coffee.hex, bg = colors.teal.hex } },
      visual = { a = { fg = colors.black_coffee.hex, bg = colors.rose.hex } },
      replace = { a = { fg = colors.black_coffee.hex, bg = colors.gold_crayola.hex } },
      inactive = {
        a = { fg = colors.beige.hex, bg = colors.cream_coffee.hex },
        b = { fg = colors.gold_crayola.hex, bg = colors.black_coffee.hex },
        c = { fg = colors.cream_coffee.hex, bg = colors.black_coffee.hex },
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
}
