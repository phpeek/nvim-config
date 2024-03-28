require "nvchad.options"

local opt = vim.o

-- enable relative line numbers
opt.relativenumber = true

-- do not wrap long lines
opt.wrap = false

-- disable swap files
opt.swapfile = false

-- disable backup file
opt.backup = false

-- keep 8 lines from top/bottom
opt.scrolloff = 8

-- disable searched highlights
opt.hlsearch = false

-- highlight incremental searc
opt.incsearch = true

-- highlight column at 80th character
opt.colorcolumn = "80"
