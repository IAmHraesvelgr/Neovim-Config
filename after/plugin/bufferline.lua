require("bufferline").setup()
vim.keymap.set("n", "<leader>bn", vim.cmd.BufferLineCycleNext)
vim.keymap.set("n", "<leader>bp", vim.cmd.BufferLineCyclePrev)
