return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  lazy = false,
  config = function()
    require('tokyonight').setup {
      style = 'moon',
      on_colors = function(colors) end,
      on_highlights = function(hl, c)
        -- See theme for explanation
        -- https://github.com/folke/tokyonight.nvim/blob/main/lua/tokyonight/theme.lua#L21
        hl.Cursor = {
          bg = '#D5DBEF',
        }
        hl.lCursor = {}
        hl.CursorLine = {
          bg = c.bg_dark,
        }
        hl.CursorLineNr = {}
        hl.LineNr = {}
      end,
    }
    vim.cmd [[colorscheme tokyonight]]
  end,
}
