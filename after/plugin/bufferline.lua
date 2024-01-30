require("bufferline").setup({
  options = {
    separator_style = "thick"
  }
})
vim.keymap.set("n", "<leader>bn", vim.cmd.BufferLineCycleNext)
vim.keymap.set("n", "<leader>bp", vim.cmd.BufferLineCyclePrev)
