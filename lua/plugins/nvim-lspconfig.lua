-- https://github.com/neovim/nvim-lspconfig
local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  print("Error: lspconfig did not load")
  return
end


lspconfig.ccls.setup{}
--require('lspconfig').jdtls.setup{}

