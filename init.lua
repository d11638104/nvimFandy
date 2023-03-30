--==================================================================
--"  _____               _         _   _                 _
--" |  ___|_ _ _ __   __| |_   _  | \ | | ___  _____   _(_)_ __ ___
--" | |_ / _` | '_ \ / _` | | | | |  \| |/ _ \/ _ \ \ / / | '_ ` _ \
--" |  _| (_| | | | | (_| | |_| | | |\  |  __/ (_) \ V /| | | | | | |
--" |_|  \__,_|_| |_|\__,_|\__, | |_| \_|\___|\___/ \_/ |_|_| |_| |_|
--"                        |___/
--"==================================================================
--
-- 基础设置
require "fandy.basic"
--
--" Packer 插件管理
require "fandy.plugins"

--
--" 快捷键映射
require "fandy.keybindings"
--
--" 插件配置
--require "fandy.plugin-config.which-key"
require "fandy.plugin-config.notify"
require "fandy.plugin-config.cmake-tools"
require "fandy.plugin-config.nvim-treesitter"
require "fandy.plugin-config.telescope"
require "fandy.plugin-config.nvim-tree"
require "fandy.plugin-config.bufferline"
-- TODO:-- sniprun 除了一些问题
-- require "fandy.plugin-config.sniprun"
require "fandy.plugin-config.project"
--"lua require('plugin-config/surround')
require "fandy.plugin-config.comment"
--"lua require('plugin-config/nvim-colorizer')
--"lua require('plugin-config/rust-tools')
require "fandy.plugin-config.cmp"
--
-- neodev
-- require "fandy.plugin-config.neodev"
--" LSP
require "fandy.lsp"

-- DAP
require "fandy.dap"
--

--" 主题
require "fandy.plugin-config.colorscheme"
--require "fandy.plugin-config.themes.catppuccin"
--
--" telescope
require "fandy.plugin-config.autopairs"
--
--" indent-blankline
require "fandy.plugin-config.indent-blankline"
--
--" toggleterm
require "fandy.plugin-config.toggleterm"
--
--" lualine
require "fandy.plugin-config.lualine"
--
--" 开始菜单
require "fandy.plugin-config.alpha"
--
--" 加快nvim启动速度
require "fandy.plugin-config.impatient"
--" todo-comments
-- require "fandy.plugin-config.todo-comments"
-- autocommands
require "fandy.plugin-config.autocommands"

-- 代码格式化插件
-- require "fandy.plugin-config.formatter"
--"set background=dark
--"colorscheme gruvbox
--"====================
--"===Enhance Editor===
--"====================
