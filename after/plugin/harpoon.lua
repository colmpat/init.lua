local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>j", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>k", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>l", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>;", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<leader>h", function() harpoon:list():select(5) end)

-- tabline
shorten_list_item_names = function(list)
    local counts = {}
    local length = list:length()
    for i = 1, length do
        local list_item = list.items[i]
        if list_item ~= nil then
            local name = vim.fn.fnamemodify(list_item.value, ":t")
            counts[name or ""] = (counts[name] or 0) + 1
        end
    end
    local shortened = {}
    for i = 1, length do
        local file = list.items[i]
        if file == nil then
            table.insert(shortened, i, nil)
        else
            local name = vim.fn.fnamemodify(file.value, ":t")
            if counts[name] == 1 then
                table.insert(shortened, i, name)
            else
                -- Get parent directory and filename
                local parent = vim.fn.fnamemodify(file.value, ":h:t")
                table.insert(shortened, i, parent .. "/" .. name)
            end
        end
    end
    return shortened
end

require('harpoon-tabline').setup({ format_item_names = shorten_list_item_names })
