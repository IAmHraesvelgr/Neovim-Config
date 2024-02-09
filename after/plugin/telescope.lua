local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<ledaer>fg', builtin.git_files, {})
vim.keymap.set('n', '<leadet>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require("telescope").load_extension("noice")
