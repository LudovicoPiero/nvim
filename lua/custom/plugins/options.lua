local opt = vim.opt

-- Set cursor to block on all modes
opt.guicursor = 'n-v-i-c:block-Cursor'

-- Visual characters.
opt.fillchars = { eob = ' ', vert = '│', fold = ' ', diff = '╱' }

opt.list = true
opt.listchars = { tab = '  ', trail = '·', extends = '›', precedes = '‹', nbsp = '␣' }
