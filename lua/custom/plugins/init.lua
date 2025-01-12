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
    'goolord/alpha-nvim',
    event = 'VimEnter',
    lazy = false,
    priority = 1000,
    dependencies = {
      'echasnovski/mini.icons',
    },
    config = function()
      require('alpha').setup(require('alpha.themes.startify').config)
    end,
  },
}
