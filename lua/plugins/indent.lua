return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  --enabled = false,
  ---@module "ibl"
  config = function()
    require('ibl').setup {
      scope = { enabled = false },
      exclude = {
        filetypes = {
          'dashboard',
        },
      },
    }
  end,
}
