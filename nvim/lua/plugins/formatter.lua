return {
  'mhartington/formatter.nvim',
  config = function()
    -- Utilities for creating configurations
    local util = require 'formatter.util'

    -- Configure formatter.nvim
    require('formatter').setup {
      -- Enable or disable logging
      logging = true,
      -- Set the log level
      log_level = vim.log.levels.WARN,
      -- All formatter configurations are opt-in
      filetype = {
        -- For any language
        ['*'] = {
          require('formatter.filetypes.any').remove_trailing_whitespace,
        },
        lua = {
          require('formatter.filetypes.lua').stylua, function()
            if util.get_current_buffer_file_name() == 'special.lua' then
              return nil
            end

            return {
              exe = 'stylua',
              args = {
                '--search-parent-directories',
                '--stdin-filepath',
                util.escape_path(util.get_current_buffer_file_path()),
                '--',
                '-',
              },
              stdin = true,
            }
          end,
        },
        javascript = {
          function()
            return {
              exe = 'npx prettier',
              cwd = vim.fn.getcwd(),
              args = {
                '--stdin-filepath',
                util.escape_path(util.get_current_buffer_file_path()),
                '--write',
              },
              stdin = true,
            }
          end,
        },
        typescript = {
          function()
            return {
              exe = 'npx prettier',
              cwd = vim.fn.getcwd(),
              args = {
                '--stdin-filepath',
                util.escape_path(util.get_current_buffer_file_path()),
                '--write',
              },
              stdin = true,
            }
          end,
        },
        typescriptreact = {
          function()
            return {
              exe = 'npx prettier',
              cwd = vim.fn.getcwd(),
              args = {
                '--stdin-filepath',
                util.escape_path(util.get_current_buffer_file_path()),
                '--write',
              },
              stdin = true,
            }
          end,
        },
        javascriptreact = {
          function()
            return {
              exe = 'npx prettier',
              cwd = vim.fn.getcwd(),
              args = {
                '--stdin-filepath',
                util.escape_path(util.get_current_buffer_file_path()),
                '--write',
              },
              stdin = true,
            }
          end,
        },
      },
    }
  end,
}
