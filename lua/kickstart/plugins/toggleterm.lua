vim.pack.add({
  "https://github.com/akinsho/toggleterm.nvim",
})

vim.keymap.set("n", "<leader>gg", function()
  require("toggleterm.terminal").Terminal:new({
    cmd = "lazygit",
    direction = "float",
  }):toggle()
end, {
  desc = "Open lazygit",
})
