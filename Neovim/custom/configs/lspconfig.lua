-- LSP Servers
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilites = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilites = capabilites,
  filetypes = { "rust" },
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})
lspconfig.tsserver.setup {}
lspconfig.angularls.setup {}
lspconfig.quick_lint_js.setup {}

local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig.clangd.setup {
  capabilities = capabilities,
}

