require "nvchad.mappings"

local map = vim.keymap.set
local nomap = vim.keymap.del

-- disable space in normal and visual mode
map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- ---@type MappingsTable
-- local M = {}

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

-- M.general = {
-- i = {
--   ["jk"] = { "<esc>", "escape insert mode", opts = { nowait = true } },
-- },
-- n = {
--   ["<leader>fm"] = {
--     function()
--       require("conform").format()
--     end,
--     "Conform / LSP formating",
--   },
--   ["<leader>d"] = { [["_d]], "delete with void register" },
--   -- [";"] = { ":", "Enter command mode", opts = { nowait = true } },
--   ["<C-d>"] = { "<C-d>zz" },
--   ["<C-u>"] = { "<C-u>zz" },
-- },
-- v = {
--   ["J"] = { ":m '>+1<CR>gv=gv", "Move line below" },
--   ["K"] = { ":m '<-2<CR>gv=gv", "Move line above" },
--   [">"] = { ">gv", "indenting" },
-- },
-- }

-- lsp
map("n", "gd", "<cmd> Telescope lsp_definitions <CR>", { desc = "LSP definition" })
map("n", "gr", "<cmd> Telescope lsp_references <CR>", { desc = "LSP reference" })
map("n", "gi", "<cmd> Telescope lsp_implementations <CR>", { desc = "LSP implementation" })
map("n", "<leader>rn", function()
  require("nvchad.renamer").open()
end, { desc = "LSP rename" })

-- M.lspconfig = {
--   n = {
--     ["gd"] = { "<cmd> Telescope lsp_definitions <CR>", "LSP definition" },
--     ["gr"] = { "<cmd> Telescope lsp_references <CR>", "LSP reference" },
--     ["gi"] = { "<cmd> Telescope lsp_implementations <CR>", "LSP implementation" },
--     ["<leader>rn"] = {
--       function()
--         require("nvchad.renamer").open()
--       end,
--       "LSP rename",
--     },
--   },
-- }

-- telescope
map("n", "<C-p>", "<cmd> Telescope git_files <CR>", { desc = "Find project files" })
map("n", "<leader>hs", "<cmd> Telescope help_tags <CR>", { desc = "Search help" })
map("n", "<leader>fs", "<cmd> Telescope lsp_document_symbols <CR>", { desc = "Find symbols" })
map("n", "<leader>fk", "<cmd> Telescope keymaps <CR>", { desc = "Find keymaps" })
map("n", "<leader>fW", "<cmd> Telescope grep_string <CR>", { desc = "Find word under cursor" })
map("n", "<leader>fd", "<cmd> Telescope diagnostics <CR>", { desc = "Find diagnostics" })

-- M.telescope = {
--   n = {
--     ["<C-p>"] = { "<cmd> Telescope git_files <CR>", "Find project files" },
--     ["<leader>hs"] = { "<cmd> Telescope help_tags <CR>", "Search help" },
--     ["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols <CR>", "Find symbols" },
--     ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "Find keymap" },
--     ["<leader>fW"] = { "<cmd> Telescope grep_string <CR>", "Find word under cursor" },
--     ["<leader>fd"] = { "<cmd> Telescope diagnostics <CR>", "Find diagnostics" },
--   },
-- }

-- --- rest.nvim
-- map("n", "<leader>rr", "<Plug>RestNvim", { desc= "Run request under cursor" })
-- map("n", "<leader>rp", "<Plug>RestNvimPreview", { desc= "Preview request under cursor" })
-- map("n", "<leader>rl", "<Plug>RestNvimLast", { desc= "Re-run last request" })
-- M.rest = {
--   n = {
--     ["<leader>rr"] = {
--       "<Plug>RestNvim",
--       "Run request under the cursor",
--     },
--     ["<leader>rp"] = {
--       "<Plug>RestNvimPreview",
--       "Preview the request under the cursor",
--     },
--     ["<leader>rl"] = {
--       "<Plug>RestNvimLast",
--       "Re-run the last request",
--     },
--   },
-- }

-- vimtest
map("n", "<leader>rt", "<cmd> TestNearest <CR>", { desc = "Run nearest test" })
map("n", "<leader>rT", "<cmd> TestFile <CR>", { desc = "Run test file" })
-- M.vimtest = {
--   n = {
--     ["<leader>rt"] = { "<cmd> TestNearest <CR>", "Run nearest test" },
--     ["<leader>rT"] = { "<cmd> TestFile <CR>", "Run test file" },
--   },
-- }

-- accelerated_jk
map("n", "j", "<Plug>(accelerated_jk_gj)", { desc = "accelerated gj movement" })
map("n", "k", "<Plug>(accelerated_jk_gk)", { desc = "accelerated gk movement" })
-- M.accelerated_jk = {
--   n = {
--     j = { "<Plug>(accelerated_jk_gj)", "accelerated gj movement" },
--     k = { "<Plug>(accelerated_jk_gk)", "accelerated gk movement" },
--   },
-- }

-- return M
