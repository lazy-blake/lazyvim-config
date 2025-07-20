return {
  {
    "folke/snacks.nvim",
    enabled = true,
    event = "VimEnter",
    ---@type snacks.Config
    opts = function()
      local ascii_dir = vim.fn.stdpath("config") .. "/data/ascii"

      if vim.fn.has("win32") == 1 then
        ascii_dir = vim.fn.substitute(ascii_dir, "/", "\\", "g")
      end

      -- 1. Get all files (Get-ChildItem)
      -- 2. Randomly sort the entire list (Sort-Object {Get-Random})
      -- 3. Select the first one from the shuffled list (Select-Object -First 1)
      local cmd_template = [[
        try {
          $file = (Get-ChildItem -Path '%s' -File -ErrorAction Stop | Sort-Object {Get-Random} | Select-Object -First 1 -ErrorAction Stop).FullName;
          ascii-image-converter --color -H%d -c $file
        } catch {
          Write-Host "Snacks Error: $($_.Exception.Message)"
        }
      ]]

      -- Create the two specific commands your config uses
      local cmd_h30 = string.format(cmd_template, ascii_dir, 30)
      local cmd_h24 = string.format(cmd_template, ascii_dir, 24)

      -- Return your full-featured configuration with the final, robust commands
      return {
        dashboard = {
          width = 60,
          pane_gap = 20,
          sections = {
            {
              pane = 1,
              padding = 5,
              align = "center",
              {
                enabled = function()
                  return vim.o.lines > 40
                end,
                section = "terminal",
                cmd = cmd_h30,
                height = 30,
                padding = 2,
                align = "center",
              },
              {
                enabled = function()
                  return not (vim.o.lines > 40) and vim.o.columns > 70
                end,
                section = "terminal",
                cmd = cmd_h24,
                height = 24,
                padding = 2,
                indent = 13,
                align = "center",
              },
              {
                enabled = function()
                  return not (vim.o.columns > 140) and vim.o.lines > 40
                end,
                section = "keys",
                padding = 2,
                align = "left",
                gap = 1,
              },
              {
                enabled = function()
                  return not (vim.o.columns > 140) and vim.o.lines > 40
                end,
                icon = " ",
                title = "Recent Files",
              },
              {
                enabled = function()
                  return not (vim.o.columns > 140) and vim.o.lines > 40
                end,
                section = "recent_files",
                opts = { limit = 5 },
                align = "left",
                padding = 2,
              },
              {
                enabled = function()
                  return not (vim.o.columns > 140) and vim.o.lines > 40
                end,
                section = "startup",
                padding = 2,
              },
            },
            {
              pane = 2,
              padding = 5,
              align = "center",
              {
                enabled = function()
                  return vim.o.columns > 140 or not (vim.o.lines > 40)
                end,
                section = "keys",
                padding = 2,
                align = "left",
                gap = 1,
              },
              {
                enabled = function()
                  return vim.o.columns > 140 or not (vim.o.lines > 40)
                end,
                icon = " ",
                title = "Recent Files",
              },
              {
                enabled = function()
                  return vim.o.columns > 140 or not (vim.o.lines > 40)
                end,
                section = "recent_files",
                opts = { limit = 5 },
                align = "left",
                padding = 2,
              },
              {
                enabled = function()
                  return vim.o.columns > 140 or not (vim.o.lines > 40)
                end,
                section = "startup",
                padding = 2,
              },
            },
          },
        },
      }
    end,
  },
}
