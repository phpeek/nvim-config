---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<leader>n"] = "",
    ["<leader>rn"] = "",
    ["<leader>ra"] = "",
  },
}

M.general = {
  i = {
    ["jk"] = { "<esc>", "escape insert mode", opts = { nowait = true } },
  },
  n = {
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "Conform / LSP formating",
    },
    ["<leader>d"] = { [["_d]], "delete with void register" },
    [";"] = { ":", "Enter command mode", opts = { nowait = true } },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
  },
  v = {
    ["<leader>d"] = { [["_d]], "delete with void register" },
    ["J"] = { ":m '>+1<CR>gv=gv", "Move line below" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move line above" },
    [">"] = { ">gv", "indenting" },
  },
}

M.lspconfig = {
  n = {
    ["gd"] = { "<cmd> Telescope lsp_definitions <CR>", "LSP definition" },
    ["gr"] = { "<cmd> Telescope lsp_references <CR>", "LSP reference" },
    ["gi"] = { "<cmd> Telescope lsp_implementations <CR>", "LSP implementation" },
    ["<leader>rn"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },
  },
}

M.telescope = {
  n = {
    ["<C-p>"] = { "<cmd> Telescope git_files <CR>", "Find project files" },
    ["<leader>hs"] = { "<cmd> Telescope help_tags <CR>", "Search help" },
    ["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols <CR>", "Find symbols" },
    ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "Find keymap" },
    ["<leader>fW"] = { "<cmd> Telescope grep_string <CR>", "Find word under cursor" },
    ["<leader>fd"] = { "<cmd> Telescope diagnostics <CR>", "Find diagnostics" },
  },
}

M.rest = {
  n = {
    ["<leader>rr"] = {
      "<Plug>RestNvim",
      "Run request under the cursor",
    },
    ["<leader>rp"] = {
      "<Plug>RestNvimPreview",
      "Preview the request under the cursor",
    },
    ["<leader>rl"] = {
      "<Plug>RestNvimLast",
      "Re-run the last request",
    },
  },
}

M.vimtest = {
  n = {
    ["<leader>rt"] = { "<cmd> TestNearest <CR>", "Run nearest test" },
    ["<leader>rT"] = { "<cmd> TestFile <CR>", "Run test file" },
  },
}

M.accelerated_jk = {
  n = {
    j = { "<Plug>(accelerated_jk_gj)", "accelerated gj movement" },
    k = { "<Plug>(accelerated_jk_gk)", "accelerated gk movement" },
  },
}

return M
