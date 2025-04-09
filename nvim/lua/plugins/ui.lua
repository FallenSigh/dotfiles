-- lua/plugins/ui.lua

return {
  -- 1. 语法高亮: nvim-treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate', -- 首次安装或更新时自动运行 :TSUpdate
    config = function()
      require('nvim-treesitter.configs').setup {
        -- 添加你常用的语言，例如: lua, vim, vimdoc, query, javascript, typescript, python, html, css, markdown
        ensure_installed = { "lua", "vim", "vimdoc", "query", "c", "cpp", "python", "javascript", "typescript", "html", "css", "markdown", "bash", "json", "yaml" },

        -- 启用语法高亮模块
        highlight = {
          enable = true,
          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = false,
        },

        -- 你也可以启用其他模块，但根据你的要求，只启用 highlight 就够了
        -- indentation = { enable = true },
        -- incremental_selection = { enable = true },
      }

      -- 你可能需要手动运行 :TSInstall <language_name> 来安装特定语言的解析器
      -- 例如: :TSInstall lua python javascript
      -- 或者运行 :TSUpdate 更新所有已安装的解析器
    end,
  },

  -- 2. 状态栏: lualine.nvim
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- 依赖nvim-web-devicons提供图标
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true, -- 启用图标需要 nvim-web-devicons 和 Nerd Font
          theme = 'auto', -- 可以选择 'auto' 或指定主题，如 'tokyonight'
          component_separators = { left = '', right = ''}, -- Nerd Font 分隔符 V2
          -- component_separators = { left = '|', right = '|'}, -- 简单分隔符
          section_separators = { left = '', right = ''}, -- Nerd Font 分隔符 V2
          -- section_separators = { left = '', right = ''}, -- 无分隔符
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false, -- 每个窗口都有自己的状态栏
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {} -- 可以添加其他lualine扩展，但基础已足够
      }
    end,
  },

  -- 3. 图标支持 (lualine 依赖)
  {
    'nvim-tree/nvim-web-devicons',
    config = function()
        -- 可选：进行一些默认设置覆盖，通常不需要
        -- require('nvim-web-devicons').setup { default = true }
    end
  },

  -- 4. 好看的主题: tokyonight.nvim (示例)
  {
    'folke/tokyonight.nvim',
    lazy = false, -- 建议主题插件优先加载
    priority = 1000, -- 确保在启动时加载
    config = function()
      -- 加载主题
      vim.cmd.colorscheme 'tokyonight'

      -- 你可以进一步配置 tokyonight 的样式，例如:
      -- require('tokyonight').setup({
      --   style = "storm", -- 可选: night, storm, day, moon
      --   -- ... 其他配置项
      -- })
    end,
  },
}
