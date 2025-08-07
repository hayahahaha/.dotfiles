-- ~/.config/nvim/lua/plugins/hardtime.lua
return {
  'm4xshen/hardtime.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
  opts = {
    restricted_keys = {
      ['h'] = { count = 2, timeout = 500 }, -- Allow 'h' twice within 500ms
      ['j'] = { count = 2, timeout = 500 },
      ['k'] = { count = 2, timeout = 500 },
      ['l'] = { count = 2, timeout = 500 },
      ['<Up>'] = { count = 1, timeout = 500 }, -- Only allow arrow keys once
      ['<Down>'] = { count = 1, timeout = 500 },
      ['<Left>'] = { count = 1, timeout = 500 },
      ['<Right>'] = { count = 1, timeout = 500 },
    },
    -- You can add more configurations here as needed
  },
}
