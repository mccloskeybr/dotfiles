return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'saadparwaiz1/cmp_luasnip',
  },
  event = 'InsertEnter',
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

    -- if the lsp offers a completion score, use it when sorting completion options.
    local function compare_by_completion_score(entry1, entry2)
      if entry1.completion_item.score ~= nil and entry2.completion_item.score ~= nil then
        return entry1.completion_item.score > entry2.completion_item.score
      end
    end

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
      sorting = {
        comparators = {
          compare_by_completion_score,
          require('cmp').config.compare.offset,
          require('cmp').config.compare.exact,
          require('cmp').config.compare.score,
          require('cmp').config.compare.recently_used,
          require('cmp').config.compare.locality,
          require('cmp').config.compare.kind,
          require('cmp').config.compare.length,
          require('cmp').config.compare.order,
        },
      },
    })
  end
}
