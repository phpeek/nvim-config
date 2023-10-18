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

return M
