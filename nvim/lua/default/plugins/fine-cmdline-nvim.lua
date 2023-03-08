return {
  'VonHeikemen/fine-cmdline.nvim',
  dependencies = { 'MunifTanjim/nui.nvim' },
  event = 'VimEnter',
  keys = {
    { ':', function() require('fine-cmdline').open({ default_value = '' }) end },
  }
}
