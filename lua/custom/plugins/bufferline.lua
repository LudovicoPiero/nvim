vim.pack.add {
  'https://github.com/akinsho/bufferline.nvim',
}

require('bufferline').setup {
  options = {
    mode = 'buffers',
    themable = true,
    numbers = 'none',
    indicator = { style = 'none' },
    separator_style = 'thin',
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    sort_by = 'insert_after_current',
    diagnostics = 'nvim_lsp',
    diagnostics_update_in_insert = false,

    -- Custom diagnostic icons.
    diagnostics_indicator = function(count, level)
      local icon = level:match 'error' and '󰅚 ' or '󰀪 '
      return ' ' .. icon .. count
    end,
  },
}

local map = vim.keymap.set
-- Cycle through buffers.
map('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next Buffer' })
map('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Prev Buffer' })

-- Pick a buffer.
map('n', '<leader>bp', '<cmd>BufferLinePick<cr>', { desc = 'Pick Buffer' })

-- Close buffers.
map('n', '<leader>bo', '<cmd>BufferLineCloseOthers<cr>', { desc = 'Close Other Buffers' })
