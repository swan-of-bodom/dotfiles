return {
  'hrsh7th/nvim-cmp',
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp',
    'rafamadriz/friendly-snippets',
  },
}
