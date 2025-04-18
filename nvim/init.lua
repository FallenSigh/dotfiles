-- 基础设置
vim.opt.encoding = "utf-8"
vim.opt.number = true             -- 显示行号
vim.opt.relativenumber = false    -- 相对行号
vim.opt.wrap = false             -- 禁止自动换行
vim.opt.cursorline = true        -- 高亮当前行
vim.opt.mouse = "a"              -- 启用鼠标
vim.opt.clipboard = "unnamedplus" -- 系统剪贴板共享

-- Tab 和缩进设置
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- 搜索设置
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- UI 美化
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- 性能优化
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

require("config.lazy")
