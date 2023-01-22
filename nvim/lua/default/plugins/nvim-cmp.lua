return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'saadparwaiz1/cmp_luasnip',
  },
  lazy = false,
  config = function()
    local kind_icons = {
      Text = '',
      Method = '',
      Function = '',
      Constructor = '',
      Field = '',
      Variable = '',
      Class = 'ﴯ',
      Interface = '',
      Module = '',
      Property = 'ﰠ',
      Unit = '',
      Value = '',
      Enum = '',
      Keyword = '',
      Snippet = '',
      Color = '',
      File = '',
      Reference = '',
      Folder = '',
      EnumMember = '',
      Constant = '',
      Struct = '',
      Event = '',
      Operator = '',
      TypeParameter = ''
    }
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
        ['<C-y>'] = require('cmp').mapping.confirm({ select = true }),
        ['<C-Space>'] = require('cmp').mapping.complete(),
      }),
      sources = require('cmp').config.sources({
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
        { name = 'buffer' },
      }),
      formatting = {
        format = function(entry, vim_item)
          vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)
          vim_item.menu = ({
            luasnip = '[LuaSnip]',
            nvim_lsp = '[LSP]',
            buffer = '[Buffer]',
          })[entry.source.name]
          return vim_item
        end
      },
    })
  end
}
