return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local mocha = require('catppuccin.palettes').get_palette 'mocha'
    require('bufferline').setup {
      highlights = require('catppuccin.groups.integrations.bufferline').get {
        custom = {
          all = {
            separator = { fg = mocha.crust },
            separator_visible = { fg = mocha.crust },
            separator_selected = { fg = mocha.crust },
          },
        },
      },
      options = {
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        diagnostics = false,
        hover = {
          enabled = true,
          delay = 100,
          reveal = { 'close' },
        },
        indicator = {
          icon = '▎', -- You can use any character you prefer
        },
        max_name_length = 50,
        numbers = function(opts)
          return string.format('%s', opts.raise(opts.ordinal))
        end,
        offsets = {
          {
            filetype = 'NvimTree',
            text = function()
              return vim.fn.fnamemodify(vim.fn.getcwd(), ':t')
            end,
            text_align = 'center',
          },
        },
        show_tab_indicators = true,
      },
    }
    vim.cmd [[
      augroup MyColors
      autocmd!
      autocmd ColorScheme * highlight BufferLineFill guibg=#e1e2e
      augroup END
    ]]
    -- Add this part for buffer switching with leader + number
    for i = 1, 9 do
      vim.api.nvim_set_keymap(
        'n',
        string.format('<Leader>%s', i),
        string.format(':BufferLineGoToBuffer %s<CR>', i),
        { noremap = true, silent = true }
      )
    end
  end,
}
