return {
  "neovim/nvim-lspconfig",
  config = function()
    require("plugins.configs.lspconfig") -- default LazyVim config
    require("custom.configs.lspconfig") -- your custom pyright config
  end,
}
