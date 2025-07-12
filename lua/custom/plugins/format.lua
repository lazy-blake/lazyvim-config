return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- enable formatting on save
      autoformat = true,
      format = {
        formatting_options = nil,
        timeout_ms = 3000,
      },
    },
  },

  -- this will trigger formatting on save using LSP
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = {
        timeout_ms = 3000,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        python = { "ruff_format" }, -- Use Ruff for formatting (Black style)
      },
    },
  },
}
