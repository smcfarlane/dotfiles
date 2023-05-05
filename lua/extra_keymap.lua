-- handle buffers
vim.keymap.set('n', 'gb', ':bprev<CR>', {})
vim.keymap.set('n', '<leader>bp', ':bprev<CR>', {})
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', {})
vim.keymap.set('n', '<leader>bl', ':ls<CR>', {})
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', {})

-- easy kill session
-- vim.keymap.set('n', '<leader>psd', ':ProsessionDelete<CR>', {})

-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>hm", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>h5", function() ui.nav_file(5) end)
vim.keymap.set("n", "<leader>h6", function() ui.nav_file(6) end)
vim.keymap.set("n", "<leader>h7", function() ui.nav_file(7) end)
vim.keymap.set("n", "<leader>h8", function() ui.nav_file(8) end)
vim.keymap.set("n", "<leader>h9", function() ui.nav_file(9) end)

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
