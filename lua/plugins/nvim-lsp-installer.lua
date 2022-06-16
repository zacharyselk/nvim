-- https://github.com/williamboman/nvim-lsp-installer
local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  print("Error: nvim-lsp-installer did not load!")
  return
end

lsp_installer.setup({
  ensure_installed = { "jdtls" },
  automatic_installation = false,
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    }
  }
})
