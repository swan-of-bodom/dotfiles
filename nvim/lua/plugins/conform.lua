return {
  'stevearc/conform.nvim',
  opts = {},
  enabled = false,
  config = function()
    require('dashboard').setup {
      formatters_by_ft = {
        ruby = { 'rubocop' },
      },
    }
  end,
}
