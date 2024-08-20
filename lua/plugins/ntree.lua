return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      filters = {
        dotfiles = true,
      },
    }

    -- Function to open NvimTree and switch back to the buffer
    local function open_nvim_tree()
      vim.cmd 'NvimTreeOpen'
      vim.cmd 'wincmd p'
    end

    -- Auto-close Neovim if nvim-tree is the last buffer left
    vim.api.nvim_create_autocmd('BufEnter', {
      group = vim.api.nvim_create_augroup('NvimTreeClose', { clear = true }),
      pattern = 'NvimTree_*',
      callback = function()
        local layout = vim.api.nvim_call_function('winlayout', {})
        if
          layout[1] == 'leaf'
          and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), 'filetype') == 'NvimTree'
          and layout[3] == nil
        then
          vim.cmd 'confirm quit'
        end
      end,
    })

    -- Hide tree if only dashboard
    vim.api.nvim_create_autocmd('VimEnter', {
      callback = function()
        if vim.fn.expand '%' ~= '' and vim.bo.buftype == '' and vim.bo.filetype ~= 'dashboard' then
          open_nvim_tree()
        end
      end,
    })
  end,
}
