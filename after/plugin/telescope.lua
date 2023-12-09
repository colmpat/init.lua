local builtin = require('telescope.builtin')

-- find files in directory that you opened vim in --
vim.keymap.set('n', '<leader>;f', builtin.find_files, {})

-- find files TRACKED BY GIT in directory that you opened vim in --
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})

-- grep string in directory that you opened vim in --
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
