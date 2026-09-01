return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<C-e>', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['<C-e>'] = 'close_window',
          ['o'] = 'open',

          ['c'] = 'copy_to_clipboard',
          ['y'] = function(state)
            local node = state.tree:get_node()
            vim.fn.setreg('+', node.name)
            vim.notify('Copied filename: ' .. node.name)
          end,
          ['Y'] = function(state)
            local node = state.tree:get_node()
            local path = node:get_id()
            vim.fn.setreg('+', path)
            vim.notify('Copied path: ' .. path)
          end,
        },
      },
    },
    event_handlers = {
      {
        event = 'file_open_requested',
        handler = function()
          require('neo-tree.command').execute { action = 'close' }
        end,
      },
    },
  },
}
