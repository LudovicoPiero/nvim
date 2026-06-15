vim.pack.add { 'https://github.com/stevearc/oil.nvim' }

vim.keymap.set('n', '<leader>e', ':Oil<CR>', { desc = 'Open Oil', silent = true })

require('oil').setup {
  view_options = { show_hidden = true },
  default_file_explorer = true,
  columns = {
    'permissions',
    'mtime',
    'size',
    'icon'
  }
}
