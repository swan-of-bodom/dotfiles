return {
  'xiyaowong/transparent.nvim',
  enabled = true,
  config = function()
    require('transparent').setup {
      groups = {
        'Normal',
        'NormalNC',
        'Comment',
        'Constant',
        'Special',
        'Identifier',
        'Statement',
        'PreProc',
        'Type',
        'Underlined',
        'Todo',
        'String',
        'Function',
        'Conditional',
        'Repeat',
        'Operator',
        'Structure',
        'LineNr',
        'NonText',
        'SignColumn',
        'CursorLine',
        'CursorLineNr',
        'StatusLine',
        'StatusLineNC',
        'EndOfBuffer',
      },
      -- table: additional groups that should be cleared
      extra_groups = {
        'NvimTreeNormal', -- NvimTree
      },
      -- table: groups you don't want to clear
      exclude_groups = {},
      -- function: code to be executed after highlight groups are cleared
      -- Also the user event "TransparentClear" will be triggered
      on_clear = function() end,
    }
    -- vim.g.transparent_groups = vim.list_extend(
    --   vim.g.transparent_groups or {},
    --   vim.tbl_map(function(v)
    --     return v.hl_group
    --   end, vim.tbl_values(require('bufferline.config').highlights))
    -- )
  end,
}
