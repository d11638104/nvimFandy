-- local colorscheme = "tokyonight"
-- local colorscheme = "catppuccin"
--local colorscheme = "onedark"
-- local colorscheme = "github-nvim-theme"
-- local colorscheme = "nord"
-- local colorscheme = "gruvbox"
local colorscheme = "gruvbox-material"
-- local colorscheme = "PaperColor"
-- g:gruvbox_materialgbackground = 'soft'
-- let g:gruvbox_material_better_performance = 1

if colorscheme == "gruvbox-material" then
  vim.g.gruvbox_material_foreground = 'original'
  vim.g.gruvbox_material_background = 'hard'
  vim.g.gruvbox_material_enable_bold = 1
  vim.g.gruvbox_material_transparent_background = 2
  vim.g.gruvbox_material_better_performance = 1
elseif colorscheme == "catppuccin" then
  require "fandy.plugin-config.themes.catppuccin"
-- elseif colorscheme == "github-nvim-theme" then
--   require "lua.fandy.plugin-config.themes.github-nvim-theme"
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end


