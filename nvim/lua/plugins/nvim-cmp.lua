require('packer').use({
  'hrsh7th/nvim-cmp',
  requires = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'saadparwaiz1/cmp_luasnip',
  },
  config = function()
    require('cmp').setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      window = {
        completion = require('cmp').config.window.bordered(),
        documentation = require('cmp').config.window.bordered(),
      },
      mapping = require('cmp').mapping.preset.insert({
        ['<CR>'] = require('cmp').mapping.confirm({ select = true }),
      }),
      sources = require('cmp').config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
      }),
    })
  end
})
