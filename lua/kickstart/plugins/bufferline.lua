vim.pack.add {'https://github.com/nvim-tree/nvim-web-devicons'}
vim.pack.add { 'https://github.com/akinsho/bufferline.nvim'}
local map = vim.keymap.set
require('bufferline').setup {}

map('n', '<F13>', '<cmd>BufferLineCyclePrev<cr>', {
	noremap = true,
	silent = true,
	desc = "Prev buffer",
})

map('n', '<F14>', '<cmd>BufferLineCycleNext<cr>', {
	noremap = true,
	silent = true,
	desc = "Next buffer",
})
map('n', '<F15>', '<cmd>:bp<bar>sp<bar>bn<bar>bd<CR>',
 {
	noremap = true,
	silent = true,
	desc = "Close current buffer",
})






