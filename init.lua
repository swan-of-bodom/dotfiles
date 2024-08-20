-- Vim Options

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
vim.opt.smartindent = false -- Automatically insert indentation in some cases
vim.opt.ttyfast = true -- Use fast terminal scrolling
vim.opt.wildmode = 'list:full' -- Completion mode: list all matches
vim.opt.updatetime = 200 -- reduce updatetime
vim.opt.cmdheight = 1 -- Command line height
vim.opt.autoindent = true -- Indent: Copy indent from current line when starting new line
vim.opt.swapfile = false -- No swap file
vim.o.signcolumn = 'yes' -- Stop the signal column from resizing

-- For nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ','
vim.g.maplocalleader = '\\'

-- TODO: Fix the registry thing from whichkey
vim.keymap.set('v', '<leader>y', '"+y', { desc = 'Copy to clipboard' })

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

-- LSP

local servers = {
  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
      diagnostics = { globals = { 'vim' } },
    },
  },
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup { ensure_installed = vim.tbl_keys(servers) }

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      capabilities = capabilities,
      settings = servers[server_name],
      filetypes = (servers[server_name] or {}).filetypes,
    }
  end,
}

-- Gleam shouldnt be installed with Mason, https://github.com/mason-org/mason-registry/pull/3872
require('lspconfig').gleam.setup {}

-- Sometimes LSPs are lazy or are outdated, creates a log at .local/state/nvim/lsp.log
-- vim.lsp.set_log_level("debug")

-- Diagnostics
vim.diagnostic.config {
  virtual_text = true,
  signs = true,
  underline = true,
  --update_in_insert = true,
}

-- Treesitter

require('nvim-treesitter.configs').setup {
  ensure_installed = { 'lua', 'ruby', 'javascript', 'typescript', 'rust', 'gleam' },
  auto_install = false,
  highlight = {
    disable = { 'vimdoc' },
    enable = true,
  },
  --hidesig = {
  --  enable = true,
  --  opacity = 0.5,
  --  delay = 200,
  --},
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
  },
}

-- Autocomplete

-- nvim-cmp setup
local cmp = require 'cmp'
local luasnip = require 'luasnip'
luasnip.config.setup {}

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete {},
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
  window = {
    completion = {
      border = 'rounded',
      winhighlight = 'Normal:Normal,CursorLine:CursorLine,Search:Search',
      side_padding = 1,
      max_width = 80,
      max_height = 10,
    },
    documentation = {
      border = 'rounded',
      winhighlight = 'Normal:Normal,CursorLine:CursorLine,Search:Search',
    },
  },
}

-- Autocommands

-- Open qfix on vim enter
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    vim.defer_fn(function()
      if vim.bo.filetype ~= 'dashboard' then
        vim.cmd 'copen'
        vim.cmd 'resize 8'
        vim.cmd 'wincmd p'
      end
    end, 100)
  end,
})

-- Populate quickfix on change
vim.api.nvim_create_autocmd('DiagnosticChanged', {
  callback = function()
    vim.diagnostic.setqflist { open = false }
  end,
})

-- Keymaps

-- Go to previous or next diagnostic
vim.keymap.set('n', '<C-k>', function()
  vim.diagnostic.goto_prev { float = false }
end, { desc = 'Diagnostics: prev' })

vim.keymap.set('n', '<C-j>', function()
  vim.diagnostic.goto_next { float = false }
end, { desc = 'Diagnostics: next' })

-- Moving lines (https://vim.fandom.com/wiki/Moving_lines_up_or_down)
vim.api.nvim_set_keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

--- Toggle Tree
vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Formatter.nvim
vim.api.nvim_set_keymap('n', '<C-y>', ':FormatWrite<CR>', { noremap = true, silent = true })

--- Toggle hover diagnostics
vim.api.nvim_set_keymap(
  'n',
  '<C-i>',
  '<cmd>lua vim.lsp.buf.hover()<CR>',
  { noremap = true, silent = true, desc = 'Diagnostics: hover' }
)

-- Colorschemes

-- vim.cmd.colorscheme("tokyonight-moon")
-- vim.cmd.colorscheme 'catppuccin'
vim.cmd.colorscheme 'catppuccin-mocha'
-- vim.cmd.colorscheme("catppuccin-frappe")
-- vim.cmd.colorscheme("onedark")
-- vim.cmd.colorscheme("fluoromachine")
