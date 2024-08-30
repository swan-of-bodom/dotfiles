-- Vim Options

--
vim.opt.ts = 2 -- Number of spaces in <Tab>
vim.opt.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent
vim.opt.softtabstop = 2 -- Number of spaces a <Tab> counts for
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show current line but use relative numbers
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.termguicolors = true -- Enable true colors for supported terminals
vim.opt.cursorline = true -- Highlight the screen line of the cursor
vim.opt.hlsearch = true -- Highlight all search matches
vim.opt.incsearch = true -- Do incremental searching
vim.opt.smartindent = true -- Automatically insert indentation in some cases
vim.opt.ttyfast = true -- Use fast terminal scrolling
vim.opt.wildmode = 'list:full' -- Completion mode: list all matches
vim.opt.updatetime = 200 -- reduce updatetime
vim.opt.cmdheight = 1 -- Command line height
vim.opt.autoindent = true -- Indent: Copy indent from current line when starting new line
vim.opt.swapfile = false -- No swap file
vim.o.signcolumn = 'yes' -- Stop the signal column from resizing
vim.g.loaded_netrw = 1 -- For nvim tree
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ','
vim.g.maplocalleader = '\\'

-- Sometimes LSPs are lazy or are outdated, creates a log at .local/state/nvim/lsp.log
-- --
-- Enable only when debugging
-- vim.lsp.set_log_level 'debug'

-- Plugin Manager: lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out, 'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup 'plugins'

-- Diagnostics
vim.diagnostic.config {
  virtual_text = true,
  signs = true,
  underline = true,
  --update_in_insert = true,
}

vim.fn.sign_define('DiagnosticSignError', { text = '■', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '■', texthl = 'DiagnosticSignWarn' })

-- Populate quickfix on change
vim.api.nvim_create_autocmd('DiagnosticChanged', {
  callback = function()
    vim.diagnostic.setqflist { open = false }
  end,
})

-- Exclude quickfix list from buffer list
-- https://stackoverflow.com/questions/28613190/exclude-quickfix-buffer-from-bnext-bprevious
local qf_group = vim.api.nvim_create_augroup('qf', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
  group = qf_group,
  pattern = 'qf',
  command = 'set nobuflisted',
})

-- Keymaps

-- Go to previous or next diagnostic
vim.keymap.set('n', '<C-k>', function()
  vim.diagnostic.goto_prev { float = false }
end, { desc = 'Diagnostics: prev' })

vim.keymap.set('n', '<C-j>', function()
  vim.diagnostic.goto_next { float = false }
end, { desc = 'Diagnostics: next' })

-- Move to hover window
vim.keymap.set('n', 'K', function()
  local api = vim.api
  local hover_win = vim.b.hover_preview
  if hover_win and api.nvim_win_is_valid(hover_win) then
    api.nvim_set_current_win(hover_win)
  else
    require('hover').hover()
  end
end, { desc = 'hover.nvim' })

-- Amazing!
-- https://stackoverflow.com/questions/4465095/how-to-delete-a-buffer-in-vim-without-losing-the-split-window
vim.api.nvim_set_keymap('n', '<C-x>', ':bp<Bar>bd #<CR>', { noremap = true, silent = true })
-- Moving lines (https://vim.fandom.com/wiki/Moving_lines_up_or_down)
vim.api.nvim_set_keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>g', ':Neogit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-y>', ':FormatWrite<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':Twilight<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ',,', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '..', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { desc = 'Copy to clipboard' })

-- Colorschemes

-- vim.cmd.colorscheme 'tokyonight-storm'
-- vim.cmd.colorscheme 'tokyonight-moon'
-- vim.cmd.colorscheme 'tokyonight-night'
-- vim.cmd.colorscheme 'catppuccin-macchiato'
-- vim.cmd.colorscheme 'catppuccin-frappe'
-- vim.cmd.colorscheme 'onedark'
-- vim.cmd.colorscheme 'gruvbox'
vim.cmd.colorscheme 'catppuccin-mocha'

-- Load all colorschemes except active one after few secds
vim.defer_fn(function()
  vim.api.nvim_exec_autocmds('User', { pattern = 'LoadSchemes' })
end, 3000)
