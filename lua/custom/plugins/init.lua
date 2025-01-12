return {
  {
    'akinsho/bufferline.nvim',
    opts = {
      options = {
        always_show_bufferline = true,
      },
    },
  },
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      scroll = {
        enabled = false,
      },
    },
  },
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      local api = require 'nvim-tree.api'
      local function my_on_attach(bufnr)
        api.config.mappings.default_on_attach(bufnr)

        -- Remove default keybinding to C-e to allow for our own
        vim.keymap.del('n', '<C-e>', { buffer = bufnr })
      end

      require('nvim-tree').setup {
        on_attach = my_on_attach,
        hijack_netrw = false,
      }
    end,
  },
  {
    'albenisolmos/autochdir.nvim',
    opts = {
      keep_dir = true,
    },
  },
}
