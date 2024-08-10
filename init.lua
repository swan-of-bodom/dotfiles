-- Vim Options

vim.opt.ts = 2                   -- Number of spaces in <Tab>
vim.opt.shiftwidth = 2           -- Number of spaces to use for each step of (auto)indent
vim.opt.softtabstop = 2          -- Number of spaces a <Tab> counts for
vim.opt.number = true            -- Show line numbers
vim.opt.relativenumber = true    -- Show current line but use relative numbers
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
vim.opt.swapfile = false         -- No swap file
vim.o.signcolumn = "yes"         -- Stop the signal column from resizing

-- For nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"


-- Plugin Manager: lazy.nvim

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

-- LSP

local servers = {
  rust_analyzer = {},
  ruby_lsp = {},
  tsserver = {},
  yamlls = {},
  eslint = {},
  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
      diagnostics = { globals = { "vim" } }
    },
  },
}

local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers)
}

mason_lspconfig.setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup {
      -- capabilities = capabilities,
      settings = servers[server_name],
      filetypes = (servers[server_name] or {}).filetypes,
    }
  end
}

-- Diagnostics
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  --update_in_insert = true,
})

-- Treesitter

require("nvim-treesitter.configs").setup {
  ensure_installed = { "lua", "ruby", "javascript", "typescript", "rust" },
  auto_install = false,
  highlight = {
    disable = { "vimdoc" },
    enable = true,
  },
  hidesig = {
    enable = true,
    opacity = 0.5,
    delay = 200,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
}

-- Keymaps

-- Go to previous or next diagnostic
vim.keymap.set("n", "<C-k>", function() vim.diagnostic.goto_prev({ float = true }) end, { desc = "Diagnostics: prev" })
vim.keymap.set("n", "<C-j>", function() vim.diagnostic.goto_next({ float = true }) end, { desc = "Diagnostics: next" })

-- Moving lines (https://vim.fandom.com/wiki/Moving_lines_up_or_down)
vim.api.nvim_set_keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })


-- Colorschemes

-- vim.cmd.colorscheme "tokyonight-rain"
vim.cmd.colorscheme "catppuccin"
-- vim.cmd.colorscheme "onedark"

