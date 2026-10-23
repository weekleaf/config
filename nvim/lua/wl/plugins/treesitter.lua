return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',

    config = function()
      require('nvim-treesitter').install({
        'c',
        'vim',
        'vimdoc',
        'query',
        'cpp',
        'python',
        'rust',
      })

      vim.api.nvim_create_autocmd('FileType', {
        callback = function(args)
          pcall(vim.treesitter.start, args.buf)
        end,
      })
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    event = { "BufReadPost", "BufNewFile" },
    opts = {},
  },
}
