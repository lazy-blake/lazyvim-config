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

  {
    "shortcuts/no-neck-pain.nvim",
    cmd = "NoNeckPain",
    opts = {},
  },

  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup()
    end,
  },

  {
    "lvimuser/lsp-inlayhints.nvim",
    config = function()
      require("lsp-inlayhints").setup()
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          require("lsp-inlayhints").on_attach(client, args.buf)
        end,
      })
    end,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    config = function()
      require("rainbow-delimiters.setup").setup({})
    end,
  },
  { "nvim-tree/nvim-web-devicons", lazy = true },
  { "numToStr/Comment.nvim", opts = {} },
}
