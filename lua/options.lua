require 'nvchad.options'

local o = vim.o

-- enable relative line numbers
o.relativenumber = true

-- do not wrap long lines
o.wrap = false

-- disable swap files
o.swapfile = false

-- disable backup file
o.backup = false

-- keep 8 lines from top/bottom
o.scrolloff = 8

-- disable searched highlights
o.hlsearch = false

-- highlight incremental searc
o.incsearch = true

-- highlight column at 80th character
o.colorcolumn = '80'
