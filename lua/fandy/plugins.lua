local fn = vim.fn


--Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we dont error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

--Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}


return require('packer').startup(function(use)
  -- manage itself
  use "wbthomason/packer.nvim"

  --lspconfig
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }
  -- lsp-installer
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'rcarriga/nvim-notify'
  -- Debugger
  use 'mfussenegger/nvim-dap'
  use 'nvim-telescope/telescope-dap.nvim'
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
  use 'theHamsta/nvim-dap-virtual-text'
  -- use 'folke/neodev.nvim'

  --project manage
  use 'ahmedkhalf/project.nvim'

  -- 同字符高亮
  use 'RRethy/vim-illuminate'

  -- signature
  use "ray-x/lsp_signature.nvim"

  -- latex
  use 'lervag/vimtex'

  -- neovim-tasks
  --use "Shatur/neovim-tasks"
  --use "cdelledonne/vim-cmake"
  use 'Civitasv/cmake-tools.nvim'


  -- nvim-cmp
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'     -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'       -- { name = 'buffer' },
  use 'hrsh7th/cmp-path'         -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'      -- { name = 'cmdline' }

  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lua"
  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use { "SirVer/ultisnips",
    requires = "honza/vim-snippets", rtp = "." }
  use "quangnguyen30192/cmp-nvim-ultisnips"

  -- vsnip
  use 'hrsh7th/cmp-vsnip' -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'

  -- lspkind
  use 'onsails/lspkind-nvim'

  -- Colorschemes
  -- gruvbox theme
  -- use 'NLKNguyen/papercolor-theme'
  use "lunarvim/colorschemes"
  -- use 'shaunsingh/nord.nvim'
  -- use ({
  --     "catppuccin/nvim",
  --     as = "catppuccin",
  -- })
  -- use {
  --     "projekt0n/github-nvim-theme",
  --     tag = "v0.0.4"
  -- }
  -- use "folke/tokyonight.nvim"
  use "sainnhe/gruvbox-material"

  use {
    'ellisonleao/gruvbox.nvim',
    requires = 'rktjmp/lush.nvim'
  }

  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- bufferline
  use {
    'akinsho/bufferline.nvim',
    -- tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- nvim-treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }


  -- telescope
  use {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
  }
  use {
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-media-files.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    'nvim-telescope/telescope-live-grep-raw.nvim',
    --'MattesGroeger/vim-bookmarks',
    --'tom-anders/telescope-vim-bookmarks.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }
  -- 括号自动配对
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter

  -- 对齐缩进
  use "lukas-reineke/indent-blankline.nvim"

  -- terminal
  use "akinsho/toggleterm.nvim"

  -- lualine
  use 'nvim-lualine/lualine.nvim'

  -- 开始菜单
  use 'goolord/alpha-nvim'

  --加快nvim的启动速度
  use 'lewis6991/impatient.nvim'

  -- copilot
  --use 'github/copilot.vim'

  -- 注释
  use "numToStr/Comment.nvim" -- Easily comment stuff
  --format.nvim
  -- bufline保持布局删除buffer
  use 'famiu/bufdelete.nvim'

  -- markdow
  use { 'iamcco/markdown-preview.nvim',
    ft = 'markdown',
    run = 'cd app && yarn install'
  }
  -- 代码块运行
  -- use { 'michaelb/sniprun', run = 'bash ./install.sh' }

  -- TODO
  use { "folke/todo-comments.nvim",
    config = function() -- todo comments
      require('fandy.plugin-config.todo-comments')
    end
  }

  use {
    'mechatroner/rainbow_csv',
  }
  -- 代码格式化
  -- use { 'sbdchd/neoformat' }
  -- use { 'mhartington/formatter.nvim' }
  --
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
