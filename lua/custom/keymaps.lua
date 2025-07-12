vim.keymap.set("n", "<leader>r", function()
  local file = vim.fn.expand("%:p")
  vim.cmd('split | terminal python "' .. file .. '"')
end, { desc = "Run Python file", silent = true })

vim.keymap.set("n", "<leader>rf", function()
  local file = vim.fn.expand("%:p") -- Full path to current file
  vim.fn.jobstart({
    "wt.exe",
    "new-tab",
    "powershell.exe",
    "-NoExit",
    "ipython",
    "-i",
    file,
  }, { detach = true })
end, { desc = "Run current file in IPython REPL (Windows Terminal)" })
