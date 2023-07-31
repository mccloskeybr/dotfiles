return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  event = 'VeryLazy',
  config = function()
    require("lsp_lines").setup()

    -- configure diagnostics to open in float on hover
    vim.diagnostic.config({
      virtual_text = false,
      float = {
        source = 'always',
        border = 'single'
      },
    })
    vim.api.nvim_create_augroup('diagnostics_float', {
      clear = true,
    })
    -- uses updatetime as the hold timer
    vim.api.nvim_create_autocmd({'CursorHold', 'CursorHoldI'}, {
      group = 'diagnostics_float',
      pattern = '*',
      callback = function()
        vim.diagnostic.open_float()
      end,
    })
  end,
}
