return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = true,
      },
    })
    
    -- Open nvim-tree on startup and then focus on the buffer
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        vim.cmd("NvimTreeOpen")
        vim.cmd("wincmd p")  -- This switches the focus back to the previous window (the buffer)
      end
    })
  end,
}

