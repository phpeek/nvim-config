local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { 'stylua' },

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

  -- format_on_save = {
  --   lsp_fallback = true,
  --   async = false,
  --   timeout_ms = 500,
  -- },
}

require('conform').setup(options)
