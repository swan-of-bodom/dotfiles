return {
  'lukas-reineke/indent-blankline.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  main = 'ibl',
  --enabled = false,
  ---@module "ibl"
  config = function()
    require('ibl').setup {
      scope = { enabled = true, show_start = false },
      exclude = {
        filetypes = {
          'dashboard',
        },
      },
    }
  end,
}

