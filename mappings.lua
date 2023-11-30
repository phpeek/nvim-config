local M = {}

M.disabled = {
  n = {
    ["<leader>n"] = "",
    ["<leader>rn"] = "",
    ["<leader>ra"] = "",
    ["<leader>ff"] = "",
    ["<leader>fa"] = "",
  },
}

M.general = {
  i = {
    ["jk"] = { "<esc>", "escape insert mode", opts = { nowait = true } },
  },
  n = {
    ["<leader>fm"] = {
      function()
        require("conform").format {
          lsp_fallback = true,
          async = true,
          timeout_ms = 500,
        }
      end,
      "Conform / LSP formating",
    },
    ["<leader>d"] = { [["_d]], "delete with void register" },
  },
  v = {
    ["<leader>fm"] = {
      function()
        require("conform").format {
          lsp_fallback = true,
          async = true,
          timeout_ms = 500,
        }
      end,
      "Conform / LSP formating",
    },
    ["<leader>d"] = { [["_d]], "delete with void register" },
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
    ["<leader>fs"] = { "<cmd> Telescope find_files", "Search files" },
    ["<leader>hs"] = { "<cmd> Telescope help_tags <CR>", "Search help" },
  },
}

return M
