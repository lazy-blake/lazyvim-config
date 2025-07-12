local lspconfig = require("lspconfig")
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

-- Pyright config (unchanged)
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Ruff LSP (new version using ruff server)
lspconfig.ruff.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "ruff", "server" },
  init_options = {
    settings = {
      args = {},
    },
  },
})
