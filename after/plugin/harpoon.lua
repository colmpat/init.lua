local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

vim.keymap.set('n', '<C-j>', function() ui.nav_file(1) end)
vim.keymap.set('n', '<C-k>', function() ui.nav_file(2) end)
vim.keymap.set('n', '<C-l>', function() ui.nav_file(3) end)
vim.keymap.set('n', '<C-;>', function() ui.nav_file(4) end)

-- tabline
require('harpoon-tabline').setup()
