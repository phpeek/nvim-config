require "nvchad.mappings"

local map = vim.keymap.set
local nomap = vim.keymap.del

-- disable space in normal and visual mode
map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- disable nvchad mappings
nomap("n", "<leader>n")
nomap("n", "<leader>rn")
-- nomap("n", "<leader>ra")

-- general
map("i", "jk", "<esc>", { desc = "escape insert mode", nowait = true })
map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "Conform formatting" })
map("n", "<leader>d", '[["_d]]', { desc = "delete with void register" })
map("n", "<C-d>", "<C-d>zz", { desc = "jump down and center" })
map({ "n", "v" }, "<leader>d", '[["_d]]', { desc = "jump up and center" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line downwards" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line upwards" })
map("v", ">", ">gv", { desc = "indenting" })

-- lsp
map("n", "gd", "<cmd> Telescope lsp_definitions <CR>", { desc = "LSP definition" })
map("n", "gr", "<cmd> Telescope lsp_references <CR>", { desc = "LSP reference" })
map("n", "gi", "<cmd> Telescope lsp_implementations <CR>", { desc = "LSP implementation" })
map("n", "<leader>rn", function()
  require("nvchad.renamer").open()
end, { desc = "LSP rename" })

-- telescope
map("n", "<C-p>", "<cmd> Telescope git_files <CR>", { desc = "Find project files" })
map("n", "<leader>hs", "<cmd> Telescope help_tags <CR>", { desc = "Search help" })
map("n", "<leader>fs", "<cmd> Telescope lsp_document_symbols <CR>", { desc = "Find symbols" })
map("n", "<leader>fk", "<cmd> Telescope keymaps <CR>", { desc = "Find keymaps" })
map("n", "<leader>fW", "<cmd> Telescope grep_string <CR>", { desc = "Find word under cursor" })
map("n", "<leader>fd", "<cmd> Telescope diagnostics <CR>", { desc = "Find diagnostics" })

-- vimtest
map("n", "<leader>rt", "<cmd> TestNearest <CR>", { desc = "Run nearest test" })
map("n", "<leader>rT", "<cmd> TestFile <CR>", { desc = "Run test file" })

-- accelerated_jk
map("n", "j", "<Plug>(accelerated_jk_gj)", { desc = "accelerated gj movement" })
map("n", "k", "<Plug>(accelerated_jk_gk)", { desc = "accelerated gk movement" })
