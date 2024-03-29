local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    javascript = { 'prettier' },
    typescript = { 'prettier' },
    css = { 'prettier' },
    html = { 'prettier' },
    javascriptreact = { 'prettier' },
    typescriptreact = { 'prettier' },
    go = { 'gofmt', 'goimports' },
    sh = { 'shfmt' },
    terraform = { 'terraform_fmt' },
    rust = { 'rustfmt' },
  },
}

return options
