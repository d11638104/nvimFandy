local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--shorten function name
local map = vim.api.nvim_set_keymap

-- leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 保存本地变量

-- 映射按键的模板
-- map('模式', '按键', '映射为XX', opts)

-- 浏览代码
-- 快速移动光标
map("n", "J", "7j", opts)
map("n", "K", "7k", opts)


-- test 如果遇到在括号内输入完毕想在）后面继续输入，暂时先用这个解决方案，
map("i", "ll", "<Esc>la", opts)
-- 快捷保存与退出
map("n", "Q", ":NvimTreeClose<CR>:q<CR>", opts)
map("n", "W", ":w<CR>", opts)
map("n", "S", ":NvimTreeClose<CR>:wq<CR>", opts)

-- 分屏
-- 右分屏
map("n", "s", "<nop>", opts)
map("n", "sl", ":set splitright<CR>:vsplit<CR>", opts)

-- 左分屏
map("n", "sh", ":set nosplitright<CR>:vsplit<CR>", opts)

-- 上分屏
map("n", "sk", ":set nosplitbelow<CR>:split<CR>", opts)

-- 下分屏
map("n", "sj", ":set splitbelow<CR>:split<CR>", opts)

-- 分屏间光标移动
map("n", "<leader>h", "<C-w>h", opts)
map("n", "<leader>j", "<C-w>j", opts)
map("n", "<leader>k", "<C-w>k", opts)
map("n", "<leader>l", "<C-w>l", opts)

-- 改变分屏的大小
--map("n", "<C-Up>", ":resize +2<CR>", opts)
--map("n", "<C-Down>", ":resize -2<CR>", opts)
--map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
--map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- bufferline 左右Tab切换
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
map("n", "<leader>b", ":Bdelete<CR>", opts)


-- 打印大字
--map("n", "bw", ":r !figlet ", opts)

----------------------------------插件快捷键-----------------------------------
-- nvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- o 打开关闭文件夹
-- a 创建文件
-- r 重命名
-- x 剪切
-- c 拷贝
-- p 粘贴
-- d 删除
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", optss)
map("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
map("n", "<C-t>", "<cmd>Telescope live_grep<cr>", opts)
--format
map("n", "<S-f>", ":Format<CR>", opts)

-- sniprun
map("n", "<F5>", ":%SnipRun<cr>", opts)
map("v", "<F5>", ":%SnipRun<cr>", opts)

-- cmake-tools
map("n", "<C-S-b>", ":CMakeBuild<cr>", opts)
map("n", "<C-S-r>", ":CMakeRun<cr>", opts)
--local pluginKeys = {}
--
--debug
-- map("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint(); require'user.dap.dap-util'.store_breakpoints(true)<cr>", opts)
map("n", "<F9>", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
-- map("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
--keymap("n", "<leader>dr", "lua require'dap'.repl.open()<cr>", opts)
-- map("n", "<F9>", "<cmd>lua require'dap'.run_last()<cr>", opts)
-- map('n', '<F10>', '<cmd>lua require"user.dap.dap-util".reload_continue()<CR>', opts)
map("n", "<F4>", "<cmd>lua require'dap'.terminate()<cr>", opts)
map("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>", opts)
-- map("n", "<F6>", "<cmd>lua require'dap'.step_over()<cr>", opts)
-- map("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", opts)
-- map("n", "<F8>", "<cmd>lua require'dap'.step_out()<cr>", opts)
-- map("n", "K", "<cmd>lua require'dapui'.eval()<cr>", opts)
-- keymap("n", "<leader>dt", "<cmd>lua require'dapui'.toggle()<cr>", opts)
-- keymap("n", "<leader>dx", "<cmd>lua require'dap'.terminate()<cr>", opts)

----nvim-cmp 自动补全
--pluginKeys.cmp = function(cmp)
--  return {
--          -- 上一个
--          ['<C-p>'] = cmp.mapping.select_prev_item(),
--          -- 下一个
--          ['<C-n>'] = cmp.mapping.select_next_item(),
--          --确认
--          ['<CR>'] = cmp.mapping.confirm({
--            select = true,
--            behavior = cmp.ConfirmBehavior.Replace
--          }),
--         }
--  end
--return pluginKeys
