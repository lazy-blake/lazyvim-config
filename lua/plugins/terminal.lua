return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      {
        "<leader>tt",
        function()
          require("toggleterm").toggle()
        end,
        desc = "Toggle Terminal",
      },
    },
    config = function()
      require("toggleterm").setup({
        size = 15,
        open_mapping = [[<leader>tt]], -- this is still optional here
        direction = "float",
        float_opts = {
          border = "curved",
        },
      })
    end,
  },
}
