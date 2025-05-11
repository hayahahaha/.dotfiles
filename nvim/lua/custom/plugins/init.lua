-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    -- Optional dependency
    dependencies = { 'hrsh7th/nvim-cmp' },
    config = function()
      require('nvim-autopairs').setup {}
      -- If you want to automatically add `(` after selecting a function or method
      local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
      local cmp = require 'cmp'
      cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
    end,
  },
  { 'wakatime/vim-wakatime', lazy = false },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon'):setup()
    end,
    keys = {
      {
        '<leader>a',
        function()
          require('harpoon'):list():add()
        end,
        desc = 'harpoon file',
      },
      {
        '<C-e>',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'harpoon quick menu',
      },
      {
        '<leader>1',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = 'harpoon to file 1',
      },
      {
        '<leader>2',
        function()
          require('harpoon'):list():select(2)
        end,
        desc = 'harpoon to file 2',
      },
      {
        '<leader>3',
        function()
          require('harpoon'):list():select(3)
        end,
        desc = 'harpoon to file 3',
      },
      {
        '<leader>4',
        function()
          require('harpoon'):list():select(4)
        end,
        desc = 'harpoon to file 4',
      },
      {
        '<leader>5',
        function()
          require('harpoon'):list():select(5)
        end,
        desc = 'harpoon to file 5',
      },
    },
  },
  -- {
  --   'zbirenbaum/copilot.lua',
  --   cmd = 'Copilot',
  --   build = ':Copilot auth',
  --   event = 'BufReadPost',
  --   opts = {
  --     suggestion = {
  --       enabled = not vim.g.ai_cmp,
  --       auto_trigger = true,
  --       hide_during_completion = vim.g.ai_cmp,
  --       keymap = {
  --         accept = false, -- handled by nvim-cmp / blink.cmp
  --         next = '<M-]>',
  --         prev = '<M-[>',
  --       },
  --     },
  --     panel = { enabled = false },
  --     filetypes = {
  --       markdown = true,
  --       help = true,
  --     },
  --   },
  -- },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000, -- Make sure to load this before all the other start plugins.
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
      require('catppuccin').setup(opts)
      vim.cmd.colorscheme 'catppuccin'
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      -- You can still configure additional highlights here if needed
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'Exafunction/codeium.nvim',
    cmd = 'Codeium',
    event = 'InsertEnter',
    build = ':Codeium Auth',
    opts = {
      enable_cmp_source = vim.g.ai_cmp,
      virtual_text = {
        enabled = not vim.g.ai_cmp,
        key_bindings = {
          accept = '<Tab>',
          next = '<M-]>',
          prev = '<M-[>',
        },
      },
    },
  },
}
