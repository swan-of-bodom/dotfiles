return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    { 'dokwork/lualine-ex' },
    { 'nvim-lua/plenary.nvim' },
    { 'kyazdani42/nvim-web-devicons' },
  },

  config = function()
    local colors = {
      rosewater = '#f5e0dc',
      flamingo = '#f2cdcd',
      pink = '#f5c2e7',
      mauve = '#cba6f7',
      red = '#f38ba8',
      maroon = '#eba0ac',
      peach = '#fab387',
      yellow = '#f9e2af',
      green = '#a6e3a1',
      teal = '#94e2d5',
      sky = '#89dceb',
      sapphire = '#74c7ec',
      blue = '#89b4fa',
      lavender = '#b4befe',
      text = '#cdd6f4',
      subtext1 = '#bac2de',
      subtext0 = '#a6adc8',
      overlay2 = '#9399b2',
      overlay1 = '#7f849c',
      overlay0 = '#6c7086',
      surface2 = '#585b70',
      surface1 = '#45475a',
      surface0 = '#313244',
      base = '#1e1e2e',
      mantle = '#181825',
      crust = '#11111b',
    }

    local mode_color = {
      n = colors.flamingo,
      i = colors.green,
      v = colors.yellow,
      ['␖'] = colors.blue,
      V = colors.blue,
      c = colors.pink,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      ['␓'] = colors.orange,
      ic = colors.yellow,
      R = colors.purple,
      Rv = colors.purple,
      cv = colors.red,
      ce = colors.red,
      r = colors.blue,
      rm = colors.blue,
      ['r?'] = colors.blue,
      ['!'] = colors.red,
      t = colors.red,
    }

    local theme = {
      normal = {
        a = { fg = colors.peach },
        b = { fg = colors.blue },
        c = { fg = colors.teal },
      },
      insert = { a = { fg = colors.blue } },
      visual = { a = { fg = colors.text } },
      replace = { a = { fg = colors.yellow } },
      command = { a = { fg = colors.red } },
      inactive = {
        a = { fg = colors.green },
        b = { fg = colors.blue },
        c = { fg = colors.green },
      },
    }

    local vim_icon = {
      function()
        return ' '
      end,
      separator = { left = '', right = '' },
      color = function()
        return { fg = mode_color[vim.fn.mode()], bg = '#313244' }
      end,
    }

    local empty = {
      function()
        return ' '
      end,
      color = { bg = colors.base },
    }

    local filename = {
      'filename',
      color = { fg = colors.base, bg = colors.blue },
      file_status = true, -- Displays file status (readonly status, modified status)
      newfile_status = true, -- Display new file status (new file means no write after created)
      path = 0, -- 0: Just the filename
      separator = { left = '', right = '' },
      -- 1: Relative path
      -- 2: Absolute path
      -- 3: Absolute path, with tilde as the home directory
      -- 4: Filename and parent dir, with tilde as the home directory

      shorting_target = 40, -- Shortens path to leave 40 spaces in the window
      -- for other components. (terrible name, any suggestions?)
      symbols = {
        modified = '󰷥', -- Text to show when the file is modified.
        readonly = '', -- Text to show when the file is non-modifiable or readonly.
        unnamed = ' - No Name', -- Text to show for unnamed buffers.
        newfile = ' - New File',
      },
    }

    local filetype = {
      'filetype',
      icon_only = true,
      colored = true,
      color = { bg = '#313244' },
      separator = { left = '', right = '' },
    }

    local fileformat = {
      'fileformat',
      color = { bg = colors.lavender, fg = colors.base },
      separator = { left = '', right = '' },
    }

    local encoding = {
      'encoding',
      color = { fg = colors.blue, bg = colors.surface0 },
      separator = { left = '', right = '' },
    }

    local dia = {
      'diagnostics',
      color = { bg = colors.surface0 },
      separator = { left = '', right = '' },
    }

    local git_repo = {
      function()
        local handle = io.popen 'git remote get-url origin 2> /dev/null'
        if handle == nil then
          return ''
        end
        local result = handle:read '*a'
        handle:close()
        if result == '' then
          return '' -- Not a git repository or no remote named 'origin'
        end
        -- Extract repo name from URL
        local repo_name = result:match '([%w-]+/[%w-]+)%.git'
        if repo_name then
          return '  ' .. repo_name
        else
          -- Fallback: just return the last part of the path
          return result:match('([^/]+)%.git'):gsub('\n$', '')
        end
      end,
      color = { fg = colors.base, bg = colors.green },
      separator = { left = '', right = '' },
    }

    local branch = {
      'branch',
      separator = { left = '', right = '' },
      color = { fg = colors.text, bg = colors.surface0 },
    }

    require('lualine').setup {

      options = {
        icons_enabled = true,
        theme = theme,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          winbar = 1000,
        },
      },

      sections = {
        lualine_a = {
          -- NOTE: Show only first letter of mode.
          {
            'mode',
            separator = { left = '', right = '' },
            fmt = function(str)
              return str:sub(1, 1)
            end,
            color = function()
              return { fg = colors.base, bg = mode_color[vim.fn.mode()] }
            end,
          },
          vim_icon,
          empty,
        },
        lualine_b = {},
        lualine_c = {
          filename,
          filetype,
          empty,
          git_repo,
          branch,
          {
            'diff',
            separator = { left = '', right = '' },
            color = function()
              return { fg = mode_color[vim.fn.mode()], bg = '#313244' }
            end,
          },
          {
            require('noice').api.statusline.mode.get,
            cond = require('noice').api.statusline.mode.has,
            color = { fg = '#ed8796' },
          },
        },
        lualine_x = {
        },
        lualine_y = {
          encoding,
          fileformat,
          empty,
        },
        lualine_z = {
          dia,
          {
            -- Add your LSP component but align it to the right
            -- Lsp server names
            function()
              local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
              local clients = vim.lsp.get_active_clients()
              local lsp_names = {}

              -- Iterate through all active clients and check if they support the current filetype
              for _, client in ipairs(clients) do
                local filetypes = client.config.filetypes
                if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                  table.insert(lsp_names, client.name)
                end
              end

              -- If there are no LSPs active, return a default message
              if #lsp_names == 0 then
                return 'No Active LSP'
              end

              -- Concatenate all LSP names with a separator
              return table.concat(lsp_names, ' | ')
            end,
            color = { fg = colors.base, bg = colors.yellow },
            separator = { left = '', right = '' },
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
    }
  end,
}
