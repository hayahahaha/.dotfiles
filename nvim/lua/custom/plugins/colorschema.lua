return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = true,
    opts = {
      flavour = 'mocha', -- Set the flavour to 'mocha'
      background = { -- :h background
        light = 'mocha',
        dark = 'mocha',
      },
      transparent = false, -- Set to true if you want a transparent background
      -- Other Catppuccin options can be added here
    },
    init = function()
      -- The colorscheme will be loaded and configured by the 'config' function
    end,
    config = function(_, opts)
      -- require('catppuccin').setup(opts)
      vim.cmd.colorscheme 'gruvbox'
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      -- You can still configure additional highlights here if needed
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   opts = {
  --     flavour = 'mocha', -- Set the flavour to 'mocha'
  --     background = { -- :h background
  --       light = 'mocha',
  --       dark = 'mocha',
  --     },
  --     transparent = false, -- Set to true if you want a transparent background
  --     -- Other Catppuccin options can be added here
  --   },
  --   init = function()
  --     -- The colorscheme will be loaded and configured by the 'config' function
  --   end,
  --   config = function(_, opts)
  --     require('catppuccin').setup(opts)
  --     vim.cmd.colorscheme 'catppuccin'
  --     vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  --     -- You can still configure additional highlights here if needed
  --     -- vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },
}
