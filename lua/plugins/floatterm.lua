return {
  {
    "akinsho/toggleterm.nvim",
    keys = {
      {
        "<leader>tt",
        function()
          local Terminal = require("toggleterm.terminal").Terminal
          local float_term = Terminal:new({
            direction = "float",
            float_opts = {
              border = "rounded",
              width = math.floor(vim.o.columns * 0.8),
              height = math.floor(vim.o.lines * 0.8),
              winblend = 0,
            },
            -- You can specify shell here if needed:
            -- shell = "pwsh" or "bash"
            on_open = function(term)
              vim.cmd("startinsert!")
            end,
          })
          float_term:toggle()
        end,
        desc = "Floating Terminal (80% Screen)",
      },
    },
  },

  {
    "shortcuts/no-neck-pain.nvim",
    cmd = "NoNeckPain",
    opts = {},
  },
  { "nvim-tree/nvim-web-devicons", lazy = true },
  { "numToStr/Comment.nvim", opts = {} },
}
