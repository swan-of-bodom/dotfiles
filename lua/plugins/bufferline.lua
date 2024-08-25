return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      highlights = {
        buffer_selected = {
          bold = true,
          italic = true,
          underline = false,
        },
      },
      options = {
        buffer_close_icon = '',
        separator_style = 'slant',
        diagnostics = false,
        hover = {
          enabled = true,
          delay = 100,
          reveal = { 'close' },
        },
        indicator = {
          icon = '▎', -- You can use any character you prefer
          style = 'icon',
        },
        max_name_length = 50,
        numbers = function(opts)
          return string.format('%s', opts.raise(opts.ordinal))
        end,
        modified_icon = '',
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
