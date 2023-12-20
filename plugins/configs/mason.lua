local options = {
  ensure_installed = {
    -- lua
    "lua-language-server",

    -- go
    "gopls",

    -- docker
    "dockerfile-language-server",

    -- css
    "css-lsp",

    -- json
    "json-lsp",

    -- yaml
    "yaml-language-server",

    -- typescript
    "typescript-language-server",

    -- helm
    "helm-ls",

    -- eslint lsp
    "eslint-lsp",

    -- formatters
    "stylua",
    "goimports",
    "prettier",
    "eslint_d",
  },
}

return options
