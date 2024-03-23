local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>to', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>rl', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
