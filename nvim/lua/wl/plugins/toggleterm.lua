return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      {
        "<C-s>",
        "<cmd>ToggleTerm direction=float<cr>",
        mode = { "n", "t" },
        desc = "Toggle float terminal",
      },
    },
    opts = {
      direction = "float",
      close_on_exit = false,
      float_opts = {
        border = "rounded",
        width = function()
          return math.floor(vim.o.columns * 0.8)
        end,
        height = function()
          return math.floor(vim.o.lines * 0.8)
        end,
      },
    },
  },
}
