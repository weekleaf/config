return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {},
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    opts = {},
  },
  {
    "oskarnurm/koda.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    -- config = function()
    --   -- require("koda").setup({ transparent = true })
    --   vim.cmd("colorscheme koda")
    -- end,
    -- opts = {
    --   colors = {
    --     bg = "#090909",
    --     line = "#1a1a1a",
    --   },
    -- },
  },
}
