return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',
  opts = { files = { previewer = 'max-perf' } },
  keys = {
    { '<leader>f', ':FzfLua files<cr>', desc = 'Find files' },
    { '<C-b>', ':FzfLua buffers<cr>', desc = 'Find buffers' },
    { '<leader>g', ':FzfLua grep<cr>', desc = 'Grep' },
  },
  config = function()
    -- calling `setup` is optional for customization
    require('fzf-lua').setup {}
  end,
}
