return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    build = ':Copilot auth',
    event = 'BufReadPost',
    opts = {
      suggestion = {
        enabled = not vim.g.ai_cmp,
        auto_trigger = true,
        hide_during_completion = vim.g.ai_cmp,
        keymap = {
          -- accept = '<Tab>',
          next = '<M-]>',
          prev = '<M-[>',
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
    config = function(_, opts)
      require('copilot').setup(opts)

      -- map <Tab> in insert mode: if Copilot suggestion visible, accept, else fallback to normal tab
      vim.keymap.set('i', '<Tab>', function()
        local suggestion = require 'copilot.suggestion'
        if suggestion.is_visible() then
          suggestion.accept()
          return ''
        else
          -- fallback: insert real Tab or trigger completion depending on what your usual Tab does
          -- e.g. just send a Tab character or indent
          return vim.api.nvim_replace_termcodes('<Tab>', true, true, true)
        end
      end, { expr = true, silent = true, desc = 'Copilot Accept or Tab fallback' })
    end,
  },
  -- optionally disable copilot-cmp if you don't want Copilot in the cmp menu
  {
    'zbirenbaum/copilot-cmp',
    enabled = false,
  },
}
