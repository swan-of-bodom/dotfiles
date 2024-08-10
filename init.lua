-- Vim Options

vim.opt.ts = 2                   -- Number of spaces in <Tab>
vim.opt.shiftwidth = 2           -- Number of spaces to use for each step of (auto)indent
vim.opt.softtabstop = 2          -- Number of spaces a <Tab> counts for
vim.opt.number = true            -- Show line numbers
vim.opt.expandtab = true         -- Use spaces instead of tabs
vim.opt.termguicolors = true     -- Enable true colors for supported terminals
vim.opt.cursorline = true        -- Highlight the screen line of the cursor
vim.opt.hlsearch = true          -- Highlight all search matches
vim.opt.incsearch = true         -- Do incremental searching
vim.opt.smartindent = true       -- Automatically insert indentation in some cases
vim.opt.ttyfast = true           -- Use fast terminal scrolling
vim.opt.wildmode = "list:full"   -- Completion mode: list all matches
vim.opt.updatetime=200           -- reduce updatetime
vim.opt.cmdheight=1              -- Command line height
vim.opt.autoindent = true        -- Indent: Copy indent from current line when starting new line
vim.opt.swapfile = false

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- Plugin Manager: lazy.nvim

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- Vim globals

-- Colorscheme
vim.cmd("colorscheme onedark")
