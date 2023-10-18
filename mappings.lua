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
    ["gd"] = {
      function ()
        require("telescope.builtin").lsp_definitions()
      end,
      "LSP definitions",
    },
    ["gr"] = {
      function ()
        require("telescope.builtin").lsp_references()
      end,
      "LSP references",
    },
    ["gi"] = {
      function ()
        require("telescope.builtin").lsp_implementations()
      end,
      "LSP implementations",
    },
  }
}

return M
