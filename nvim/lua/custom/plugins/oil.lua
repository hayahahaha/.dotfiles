return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
  -- {
  -- 'prichrd/netrw.nvim',
  -- opts = {
  --   icons = {
  --     symlink = '',
  --     directory = '',
  --     file = '',
  --   },
  --   -- Uses mini.icon or nvim-web-devicons if true, otherwise use the file icon specified above
  --   use_devicons = true,
  --   mappings = {
  --     -- Function mappings receive an object describing the node under the cursor
  --     ['p'] = function(payload)
  --       print(vim.inspect(payload))
  --     end,
  --     -- String mappings are executed as vim commands
  --     ['<Leader>p'] = ":echo 'hello world'<CR>",
  --   },
  -- },
  -- },
}
