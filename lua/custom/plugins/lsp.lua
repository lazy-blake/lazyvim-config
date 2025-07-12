return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "ruff-lsp",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.configs.lspconfig") -- default
      require("custom.configs.lspconfig") -- your custom LSP configs
    end,
  },
}
