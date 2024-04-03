require 'nvchad.mappings'

local map = vim.keymap.set
local nomap = vim.keymap.del

-- disable space in normal and visual mode
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- disable nvchad mapping - toggle line and relative numbers
nomap('n', '<leader>n')
nomap('n', '<leader>rn')

-- quick escape
map('i', 'jk', '<esc>', { nowait = true })

-- moving
map('n', '<C-d>', '<C-d>zz', { desc = 'Move down and center cursor' })
map('n', '<C-u>', '<C-u>zz', { desc = 'Move up and center cursor' })
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move line downwards' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move line upwards' })
map('v', '>', '>gv', { desc = 'Move indent line' })
map({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete with void register' })

-- lsp
map('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Lsp rename' })

-- telescope
map('n', '<C-p>', '<cmd> Telescope git_files <CR>', { desc = 'Telescope Find project files' })
map('n', '<leader>hs', '<cmd> Telescope help_tags <CR>', { desc = 'Telescope Search help' })
map('n', '<leader>fk', '<cmd> Telescope keymaps <CR>', { desc = 'Telescope Find keymaps' })
map('n', '<leader>fW', '<cmd> Telescope grep_string <CR>', { desc = 'Telescope Find word under cursor' })
map('n', '<leader>fd', '<cmd> Telescope diagnostics <CR>', { desc = 'Telescope Find diagnostics' })

-- neotest
map('n', '<leader>rt', function()
  require('neotest').run.run()
end, { desc = 'Neotest Run nearest test' })
map('n', '<leader>rT', function()
  require('neotest').run.run(vim.fn.expand '%')
end, { desc = 'Neotest Run test file' })

-- accelerated_jk
map('n', 'j', '<Plug>(accelerated_jk_gj)')
map('n', 'k', '<Plug>(accelerated_jk_gk)')
