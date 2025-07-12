return {
  "hkupty/iron.nvim",
  config = function()
    local iron = require("iron.core")
    iron.setup({
      config = {
        scratch_repl = true,
        repl_definition = {
          python = {
            command = { "ipython" }, -- or "python" if IPython not installed
          },
        },
        repl_open_cmd = "vertical botright 60 split",
      },
      keymaps = {
        send_motion = "<leader>sc",
        visual_send = "<leader>sc",
        send_file = "<leader>sf",
        send_line = "<leader>sl",
        send_mark = "<leader>sm",
        mark_motion = "<leader>mc",
        mark_visual = "<leader>mc",
        remove_mark = "<leader>md",
        cr = "<leader>s<cr>",
        interrupt = "<leader>s<space>",
        exit = "<leader>sq",
        clear = "<leader>cl",
      },
    })
  end,
}
