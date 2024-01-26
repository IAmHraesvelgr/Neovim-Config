require('bufferline').setup(
  {
    options = {
      mode = "buffers", 
      style_preset = require('bufferline').style_preset.minimal,
      themeable = true,
    }
  }
)

vim.keymap.set('n', '<leader>bf', vim.cmd.BufferLinePick)
vim.keymap.set('n', '<leader>bn', vim.cmd.BufferLineCycleNext)
vim.keymap.set('n', '<leader>bp', vim.cmd.BufferLineCyclePrev)
