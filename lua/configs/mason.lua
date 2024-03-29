local options = {
  ensure_installed = {
    -- lua
    'lua-language-server',

    -- go
    'gopls',

    -- docker
    'dockerfile-language-server',

    -- css
    'css-lsp',

    -- json
    'json-lsp',

    -- yaml
    'yaml-language-server',

    -- typescript
    'typescript-language-server',

    -- helm
    'helm-ls',

    -- eslint lsp
    'eslint-lsp',

    -- python lsp
    'pyright',

    -- rust lsp
    'rust-analyzer',

    -- formatters
    'stylua',
    'goimports',
    'prettier',
    'eslint_d',
    'terraform-ls',
  },
}

return options
