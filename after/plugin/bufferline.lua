require('bufferline').setup()

vim.keymap.set("n", "<leader>bc", vim.cmd.BufferLinePickClose)
vim.keymap.set("n", "<leader>bn", vim.cmd.BufferLineCycleNext)
vim.keymap.set("n", "<leader>bp", vim.cmd.BufferLineCyclePrev)
vim.keymap.set("n", "<leader>ba", vim.cmd.BufferLineCloseOthers)
