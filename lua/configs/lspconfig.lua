local base_on_attach = require('nvchad.configs.lspconfig').on_attach
local on_init = require('nvchad.configs.lspconfig').on_init
local capabilities = require('nvchad.configs.lspconfig').capabilities

local lspconfig = require 'lspconfig'
local map = vim.keymap.set

local on_attach = function(client, bufnr)
  local function opts(desc)
    return { buffer = bufnr, desc = desc }
  end

  base_on_attach(client, bufnr)

  map('n', 'gd', '<cmd> Telescope lsp_definitions <CR>', opts 'Telescope LSP definitions')
  map('n', 'gr', '<cmd> Telescope lsp_references <CR>', opts 'Telescope LSP references')
  map('n', 'gi', '<cmd> Telescope lsp_implementations <CR>', opts 'Telescope LSP implementations')
  map(
    'n',
    '<leader>fs',
    '<cmd> Telescope lsp_document_symbols <CR>',
    { desc = 'Telescope Find symbols', buffer = bufnr }
  )
end

local servers = {
  'dockerls',
  'cssls',
  'gopls',
  'jsonls',
  'yamlls',
  'helm_ls',
  'tsserver',
  'eslint',
  'pyright',
  'terraformls',
  'rust_analyzer',
  'bashls',
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end
