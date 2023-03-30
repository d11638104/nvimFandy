local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("lspconfig is error !")
  return
end
-- require("fandy.lsp.lsp-installer")
require("fandy.lsp.mason")
require("fandy.lsp.config.lsp_signature")
-- require("mason").setup()
-- require("mason-lspconfig").setup()
require("fandy.lsp.handlers").setup()
--require("lua.lsp.null-ls")
