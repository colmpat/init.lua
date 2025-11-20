local builtin = require('telescope.builtin')

-- find files in directory that you opened vim in --
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- find files TRACKED BY GIT in directory that you opened vim in --
vim.keymap.set('n', '<leader>fa', builtin.git_files, {})

-- grep string in directory that you opened vim in --
vim.keymap.set('n', '<leader>fs', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>fl', function() builtin.live_grep(); end)
vim.keymap.set('n', '<leader>fr', builtin.resume, { noremap = true, silent = true, desc = "Resume" })
