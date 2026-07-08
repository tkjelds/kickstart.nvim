vim.pack.add {
  'https://github.com/akinsho/toggleterm.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
}
local map = vim.keymap.set

require('toggleterm').setup {
  size = 20,
  open_mapping = [[<c-\>]], -- optional fallback
  direction = 'float',
  float_opts = {
    border = 'curved',
  },
}

map(
  'n',
  '<leader>tg',
  function()
    require('toggleterm.terminal').Terminal
      :new({
        cmd = 'lazygit',
        direction = 'float',
      })
      :toggle()
  end,
  {
    desc = 'Open lazygit',
  }
)

map('n', '<leader>tt', '<cmd>ToggleTerm<cr>', {
  desc = 'Toggle terminal',
})

map('n', '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', {
  desc = 'Floating terminal',
})

map('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<cr>', {
  desc = 'Horizontal terminal',
})

map('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical<cr>', {
  desc = 'Vertical terminal',
})
