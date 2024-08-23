return {
  'nvim-treesitter/nvim-treesitter',
  event = 'BufReadPost',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  build = ':TSUpdate',
}
