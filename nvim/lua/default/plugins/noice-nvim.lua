return {
  'folke/noice.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
  event = 'VimEnter',
  config = function()
    require('noice').setup({
      cmdline = {
        format = {
          cmdline = { icon = ':', title = '' },
          search_down = { title = '' },
          search_up = { title = '' },
          help = { title = '' },
        },
      },
      views = {
        cmdline_popup = {
          position = {
            row = 5,
            col = '50%'
          },
          size = {
            width = 120,
            height = 'auto'
          },
        },
        popupmenu = {
          relative = 'editor',
          position = {
            row = 8,
            col = '50%',
          },
          size = {
            width = 120,
            height = 10,
          },
          border = {
            style = 'rounded',
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = 'Normal', FloatBorder = 'DiagnosticInfo' },
          },
        },
      },
      -- only enable floating command line and the popup for now
      messages = {
        enabled = false,
      },
      message = {
        enabled = false,
      },
      notify = {
        enabled = false,
      },
      hover = {
        enabled = false,
      },
      signature = {
        enabled = false,
      },
      smart_move = {
        enabled = false,
      },
    })
  end
}
