return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>ha",
        function()
          require("harpoon"):list():append()
        end,
        desc = "Add file to Harpoon",
      },
      {
        "<leader>hh",
        function()
          require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
        end,
        desc = "Toggle Harpoon Menu",
      },
      {
        "<leader>h1",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = "Harpoon to file 1",
      },
      {
        "<leader>h2",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = "Harpoon to file 2",
      },
      {
        "<leader>h3",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = "Harpoon to file 3",
      },
      {
        "<leader>h4",
        function()
          require("harpoon"):list():select(4)
        end,
        desc = "Harpoon to file 4",
      },
      {
        "<leader>hx",
        function()
          local list = require("harpoon"):list()
          local path = vim.fn.expand("%:p")
          list:remove(path)
          print("Removed current file from Harpoon")
        end,
        desc = "Remove current file from Harpoon",
      },
      {
        "<leader>hr",
        function()
          local list = require("harpoon"):list()
          local input = vim.fn.input("Remove file index from Harpoon (1-based): ")
          local idx = tonumber(input)

          if idx then
            list:removeAt(idx)
            print("Removed file at index " .. idx)
          else
            print("Invalid index")
          end
        end,
        desc = "Remove file from Harpoon by index",
      },
    },
    config = function()
      require("harpoon"):setup()
    end,
  },
}
