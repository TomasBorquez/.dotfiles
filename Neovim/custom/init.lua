vim.wo.relativenumber = true
vim.cmd ":set guicursor=i:block"
vim.opt.clipboard = ""

local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  update_in_insert = true,
})

local commands = {
  -- NvimTree
  string.format("highlight %s guifg=%s gui=%s", "NvimTreeFileNew", "#71bb64", "bold"),
  string.format("highlight %s guifg=%s gui=%s", "NvimTreeFileDirty", "#dfc08c", "bold"),
}

for _, command in ipairs(commands) do
  vim.api.nvim_command(command)
end

vim.cmd("highlight SignColumn guibg=#dfc08c")
