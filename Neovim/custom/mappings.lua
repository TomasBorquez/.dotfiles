local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<leader>n"] = "",
    ["<leader>r"] = "",
    ["<leader>f"] = "",
    ["<leader>rn"] = "",
    ["<leader>th"] = "",
    ["<C-a>"] = "",
    ["<C-s>"] = "",
    ["<C-p>"] = "",
    ["<C-n>"] = "",
    ["<C-t>"] = "",
    ["Q"] = "",
    ["K"] = "",
    ["J"] = "",
    [">"] = "",
    ["<"] = "",
    [">>"] = "",
    ["<<"] = "",
  },
}

-- Your custom mappings
M.abc = {
  n = {
    ["<leader>n"] = { "<cmd>nohl<CR>" },
    -- Indentation
    [">"] = { ">>" },
    ["<"] = { "<<" },
    -- Windows and VSCode stuff
    ["<C-a>"] = { "ggvG", "Select all" },
    -- Extensions
    ["s"] = { "<cmd> HopChar2 <CR>", "Searches for 2 characters" },
    ["<C-_>"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
    ["gh"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },
  },

  v = {
    -- Indentation
    [">"] = { ">gv" },
    ["<"] = { "<gv" },
    -- Windows and VSCode stuff
    ["<C-c>"] = { '"+y', "Copy" },
    ["J"] = { "<cmd> m'>+1 <CR>gv=gv" },
    ["K"] = { "<cmd> m'<-2 <CR>gv=gv" },
    -- Extensions
    ["<C-_>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },

  i = {
    ["<C-H>"] = { "<C-w>", "Delete previous word" },
  },

  t = {
    ["<C-Space>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },
  },
}

local repeatingBinds = {
  -- Quit editor
  ["<leader>q"] = {
    function()
      vim.cmd "wa"
      vim.cmd "qall!"
    end,
    "Close Nvim",
  },
  -- Vertical navigation
  ["j"] = { "gj" },
  ["k"] = { "gk" },
  -- Scrolling
  ["<C-u>"] = { "10kzz" },
  ["<C-d>"] = { "10jzz" },
  -- Windows and VSCode stuff
  ["<C-v>"] = { '"+p', "Paste from clipboard" },
  ["<C-J>"] = { "o<C-c>" },
  ["<C-f>"] = {
    function()
      vim.lsp.buf.format { async = true }
    end,
    "LSP formatting",
  },
  ["n"] = { "nzz" },
  -- Extensions
  ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "Find files" },
  ["<leader>m"] = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "Go to next diagnostic error" },
  ["<leader>f"] = { "<cmd> Telescope live_grep <CR>", "Find word" },
  ["<leader>t"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  ["<leader>r"] = {
    function()
      require("nvchad_ui.renamer").open()
    end,
    "LSP rename",
  },
  ["<C-Space>"] = {
    function()
      require("nvterm.terminal").toggle "horizontal"
    end,
    "Toggle horizontal term",
  },
  ["<C-w>"] = {
    function()
      vim.cmd "w"
      require("nvchad_ui.tabufline").close_buffer()
    end,
    "Close buffer",
  },
}
vim.cmd([[
  let g:VM_maps = {}
  let g:VM_maps['Find Under'] = '<C-n>'
  let g:VM_maps['Find Subword Under'] = '<C-n>'
]])

-- Merge the contents of the repeating table into M.abc.n and M.abc.v
for key, value in pairs(repeatingBinds) do
  M.abc.n[key] = value
  M.abc.v[key] = value
end

return M
