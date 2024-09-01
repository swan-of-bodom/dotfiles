return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'lua', 'ruby', 'javascript', 'typescript', 'rust', 'gleam', 'cairo' },
      auto_install = false,
      highlight = {
        disable = { 'vimdoc' },
        enable = true,
      },
    }
  end,
}
