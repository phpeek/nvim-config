local M = {}

M.disabled = {
  n = {
    ["<leader>n"] = "",
    ["<leader>rn"] = "",
  }
}

M.general = {
  i = {
    ['kk'] = { "<esc>", "escape insert mode", opts = { nowait = true }},
  }
}

M.lspconfig = {
  n = {
    ["gd"] = { "<cmd> Telescope lsp_definitions <CR>", "LSP definition" },
    ["gr"] = { "<cmd> Telescope lsp_references <CR>", "LSP reference" },
    ["gi"] = { "<cmd> Telescope lsp_implementations <CR>", "LSP implementation" },
  },
}

return M
