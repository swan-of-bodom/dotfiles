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
    
    -- Open nvim-tree on startup
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
          vim.cmd("NvimTreeOpen")
      end
    })
  end,
}
