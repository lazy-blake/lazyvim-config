-- Run Python file with <leader>r (Windows)
vim.keymap.set("n", "<leader>r", function()
  local file = vim.fn.expand("%:p")
  vim.cmd('split | terminal python "' .. file .. '"')
end, { desc = "Run Python file", silent = true })
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
