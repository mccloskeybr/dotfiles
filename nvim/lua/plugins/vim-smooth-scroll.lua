require('funcs.map_funcs')

require('packer').use({
  'terryma/vim-smooth-scroll',
  config = function()
    nnoremap_silent('<C-b>', '<cmd>call smooth_scroll#up(&scroll, 0, 2)<CR>zz')
    nnoremap_silent('<C-f>', '<cmd>call smooth_scroll#down(&scroll, 0, 2)<CR>zz')
  end
})
