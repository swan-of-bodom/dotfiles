return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
      theme = 'hyper',
      config = {
        week_header = {
          enable = true,
        },
        project = { enable = true, limit = 8, label = 'Recent Projects:', action = 'FzfLua files cwd=' },

        shortcut = {
          { desc = '  Lazy', group = 'String', action = 'Lazy', key = 'L' },
          {
            icon_hl = '@variable',
            desc = '  Files',
            group = 'Label',
            action = 'FzfLua files',
            key = 'F',
          },
          {
            desc = '  NeoVim Config',
            group = 'Number',
            action = 'edit ~/.config/nvim/init.lua',
            key = 'C',
          },
        },
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
