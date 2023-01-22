return {
  {
    'ojroques/nvim-osc52',
    keys = {
      { '<Leader>c', '<cmd>lua require("osc52").copy_operator, {expr = true}<CR>' },
      { '<Leader>c', '<cmd>lua require("osc52").copy_visual<CR>' },
    },
  }
}
