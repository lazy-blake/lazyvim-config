require("custom.keymaps")
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Set shell to PowerShell for Windows
if vim.fn.has("win32") == 1 then
  vim.o.shell = "pwsh"
  vim.o.shellcmdflag = "-NoProfile -Command "
  vim.o.shellquote = ""
  vim.o.shellxquote = ""
end
