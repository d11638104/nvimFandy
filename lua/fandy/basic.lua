local options = {
    backup = false,                                 -- creates a backup file
    clipboard = "unnamedplus",                      -- allows neovim to access the system clipboard
    cmdheight = 1,                                  -- keep status bar position close to bottom
    completeopt = { "menuone", "noselect" },        -- mostly just for cmp
    conceallevel = 0,                               -- so that `` is visible in markdown files
    fileencoding = "utf-8",                         -- the encoding written to a file
    hlsearch = false,                               -- highlight all matches on previous search pattern
    incsearch = true,
    ignorecase = true,                              -- ignore case in search patterns
    --mouse = "a",                             -- allow the mouse to be used in neovim
    pumheight = 10,                                 -- pop up menu height
    showmode = false,                               -- we don't need to see things like -- INSERT -- anymore
    showtabline = 2,                                -- always show tabs
    smartcase = true,                               -- smart case
    smartindent = true,                             -- make indenting smarter again
    splitbelow = true,                              -- force all horizontal splits to go below current window
    splitright = true,                              -- force all vertical splits to go to the right of current window
    swapfile = false,                               -- creates a swapfile
    termguicolors = true,                           -- set term gui colors (most terminals support this)
    timeoutlen = 500,                               -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true,                                -- enable persistent undo
    updatetime = 300,                               -- faster completion (4000ms default)
    writebackup = false,                            -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    expandtab = true,                               -- convert tabs to spaces
    shiftwidth = 2,                                 -- the number of spaces inserted for each indentation
    tabstop = 2,                                    -- insert 2 spaces for a tab
    cursorline = true,                              -- highlight the current line
    cursorcolumn = false,                           -- cursor column.
    number = true,                                  -- set numbered lines
    relativenumber = false,                         -- set relative numbered lines
    numberwidth = 4,                                -- set number column width to 2 {default 4}
    signcolumn = "yes",                             -- always show the sign column, otherwise it would shift the text each time
    wrap = true,                                    -- display lines as one long line
    scrolloff = 8,                                  -- keep 8 height offset from above and bottom
    sidescrolloff = 8,                              -- keep 8 width offset from left and right
    -- guifont = "monospace:h17",               -- the font used in graphical neovim applications
    foldmethod = "expr",                            -- fold with nvim_treesitter
    foldexpr = "nvim_treesitter#foldexpr()",
    foldenable = false,                             -- no fold to be applied when open a file
    foldlevel = 99,                                 -- if not set this, fold will be everywhere
    spell = false,                                  -- add spell support
    spelllang = { 'en_us' },                        -- support which languages?
    diffopt = "vertical,filler,internal,context:4", -- vertical diff split view
    background = "dark",
    textwidth = 80,                                 -- 设置行长度，到80个字符便会换行
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
-- vim.treesitter.is_in_node_range()Q
----utf-8
--vim.g.encoding = "UTF-8"
--vim.o.fileencoding = 'utf-8'
--
---- jk 移动时光标上下方保留5行
--vim.o.scrolloff = 5
--vim.o.sidescrolloff = 5
--
---- 使用相对行号
--vim.wo.number = true
--vim.wo.relativenumber = true
--
---- 高亮所在行
--vim.wo.cursorline = true
--
---- 显示左侧图标指示列
--vim.wo.signcolumn = "yes"
--vim.wo.colorcolumn = "80"
--
---- 缩进2个空格等于一个Tab
--vim.o.tabstop = 4
--vim.bo.tabstop = 4
--vim.o.softtabstop = 4
--vim.o.shiftround = true
--
---- >> << 时移动长度
--vim.o.shiftwidth = 2
--vim.bo.shiftwidth = 2
--
---- 新行对齐当前行，空格替代tab
--vim.o.expandtab = true
--vim.bo.expandtab = true
--vim.o.autoindent = true
--vim.bo.autoindent = true
--vim.o.smartindent = true
--
---- 搜索大小写不敏感，除非包含大写
--vim.o.ignorecase = true
--vim.o.smartcase = true
--
---- 搜索不要高亮
--vim.o.hlsearch = false
--
---- 边输入边搜索
--vim.o.incsearch = true
--
---- 使用增强状态栏后不再需要 vim 的模式提示
--vim.o.showmode = false
--
---- 命令行高为2，提供足够的显示空间
--vim.o.cmdheight = 2
--
---- 当文件被外部程序修改时，自动加载
--vim.o.autoread = true
--vim.bo.autoread = true
--
---- 禁止折行
--vim.o.wrap = false
--vim.wo.wrap = false
--
---- 行结尾可以跳到下一行
--vim.o.whichwrap = 'b,s,<,>,[,],h,l'
--
---- 允许隐藏被修改过的buffer
--vim.o.hidden = true
--
---- 鼠标支持
---- vim.o.mouse = "a"
--
---- 禁止创建备份文件
--vim.o.backup = false
--vim.o.writebackup = false
--vim.o.swapfile = false
--
---- smaller updatetime
--vim.o.updatetime = 300
--
---- 设置 timeoutlen 为等待键盘快捷键连击时间300毫秒，可根据需要设置
---- 遇到问题详见：https://github.com/nshen/learn-neovim-lua/issues/1
---- vim.o.timeoutlen = 300
--
---- split window 从下边和右边出现
--vim.o.splitbelow = true
--vim.o.splitright = true
--
---- 自动补全不自动选中
--vim.g.completeopt = "menu,menuone,noselect,noinsert"
--
---- 样式
--vim.o.background = "dark"
--vim.o.termguicolors = true
--vim.opt.termguicolors = true
--
---- 不可见字符的显示，这里只把空格显示为一个点
--vim.o.list = true
--vim.o.listchars = "space:·"
--
---- 补全增强
--vim.o.wildmenu = true
--
---- Dont' pass messages to |ins-completin menu|
--vim.o.shortmess = vim.o.shortmess .. 'c'
--vim.o.pumheight = 10
--
---- always show tabline
--vim.o.showtabline = 2
---- 折叠
--vim.cmd.foldmethod =
--
--
---- vim.
---- test catppuin
----vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
----vim.cmd[[colorscheme catppuccin]]
