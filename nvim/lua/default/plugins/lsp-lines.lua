return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  event = 'VeryLazy',
  config = function()
    require("lsp_lines").setup()
    -- remove normal diagnostics
    vim.diagnostic.config({
      virtual_text = false,
    })
  end,
}
